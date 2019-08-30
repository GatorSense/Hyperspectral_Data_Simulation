function [X,P,labels_bag,labels_point,bag_number,data] = gen_2tar_data(E_truth,params)
% This function generates synthetic data set following the definition of 
% multiple instance learning problem using TWO targets. 
% Inputs:
%   E_Truth - array containing all spectra/endmembers [n_dim, n_samps]
%   params - structure containing parameters to generate synthetic data
% Outputs:
%   X - dataset in column vectors
%   P - proportion set in column vectors
%   labels_bag - bag level label per data point
%   labels_point - instance level label per data point
%   bag_number - bag number per data point
%   data - Only provided as output if parameters.bagData = 1. Format 
%   compatiable with MIACE and MTMIACE. Structure that contains two variables:
%     dataBags: bagged data
%         * a positive bag should have at least one positive instance in it
%         * a negative bag should consist of all negative instances
%     labels: labels for dataBags
%         * the labels should be a row vector with labels corresponding to the 
%         * parameters.posLabel and parameters.negLabel where a posLabel corresponds
%         * to a positive bag and a negLabel corresponds to a negative bag.
%         * The index of the label should match the index of the bag in dataBags
% -----------------------------------------------------------------------

% Setting up Variables
parameters = params;
TotalBags = params.num_nbags + params.num_pbags;
TotalPoints = TotalBags*params.num_points;

%gen_multi_tar_mixed_data for each target type
parameters.E_target = params.E_target(1);
parameters.bagData = 0;
[X_1,P_1,labels_bag_1,labels_point_1,bag_number_1] = gen_multi_tar_mixed_data(E_truth, parameters);
parameters.E_target = params.E_target(2);
[X_2,P_2,labels_bag_2,labels_point_2,bag_number_2] = gen_multi_tar_mixed_data(E_truth, parameters);

%concatenate data of each target type appropiately
X = horzcat(X_1,X_2);
P = horzcat(vertcat(P_1(1,:),zeros(1,size(P_1,2)),P_1(2:end,:)),vertcat(zeros(1,size(P_2,2)),P_2));
labels_bag = horzcat(reshape(labels_bag_1',1,TotalPoints),reshape(labels_bag_2',1,TotalPoints));
labels_point = horzcat(reshape(labels_point_1',1,TotalPoints),reshape(labels_point_2',1,TotalPoints));
bag_number = horzcat(bag_number_1,bag_number_2+(params.num_nbags+params.num_pbags));

if params.bagData == 1
    % bag the final data set
    for i = 1:2*(params.num_nbags+params.num_pbags)
        data.dataBags{i} = X(:,bag_number == i)';
        data.labels(i) = unique(labels_bag(bag_number == i));
    end
end

end