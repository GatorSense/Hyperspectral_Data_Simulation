function [data] = gen_2tar_data(targets,params)

TotalBags = params.num_nbags+params.num_pbags;
TotalPoints = TotalBags*params.num_points;

%gen_multi_tar_mixed_data for each target type
[X_1,P_1,labels_bag_1,labels_point_1,bag_number_1] = gen_multi_tar_mixed_data(targets.E_t1,targets.E_minus,params.num_nbags,params.num_pbags,params.num_points,params.n_tar,params.N_b,params.Pt_mean,params.sigma,params.expect_SdB);
[X_2,P_2,labels_bag_2,labels_point_2,bag_number_2] = gen_multi_tar_mixed_data(targets.E_t2,targets.E_minus,params.num_nbags,params.num_pbags,params.num_points,params.n_tar,params.N_b,params.Pt_mean,params.sigma,params.expect_SdB);

%concatenate data of each target type appropiately
data.X = horzcat(X_1,X_2);
data.P = horzcat(vertcat(P_1(1,:),zeros(1,size(P_1,2)),P_1(2:end,:)),vertcat(zeros(1,size(P_2,2)),P_2));
data.labels_bag = horzcat(reshape(labels_bag_1',1,TotalPoints),reshape(labels_bag_2',1,TotalPoints));
data.labels_point = horzcat(reshape(labels_point_1',1,TotalPoints),reshape(labels_point_2',1,TotalPoints));
data.bag_number = horzcat(bag_number_1,bag_number_2+(params.num_nbags+params.num_pbags));

%normalize
data.X = data.X/max(sqrt(sum(data.X.^2,1)));

%bag the final data set
for i = 1:2*(params.num_nbags+params.num_pbags)
    data.dataBags{i} = data.X(:,data.bag_number == i)';
    data.labels(i) = unique(data.labels_bag(data.bag_number == i));
end

end