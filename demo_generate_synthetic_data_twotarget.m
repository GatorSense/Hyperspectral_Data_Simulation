function [X,P,labels_bag,labels_point,bag_number,dataBagged] = demo_generate_synthetic_data_twotarget()

% This function generates synthetic data following definition of multiple instance learning problem

% REFERENCE :
% C. Jiao, A. Zare, 
% Functions of Multiple Instances for Learning Target Signatures, 
% IEEE transactions on Geoscience and Remote Sensing, Vol. 53, No. 8, Aug. 2015, DOI: 10.1109/TGRS.2015.2406334
%
% SYNTAX: [X,P,labels_bag,labels_point]= demo_generate_synthetic_data()

% Inputs:
%    None
%
%Outputs:
%   X - dataset in column vectors
%   P - proportion set in column vectors
%   labels_bag - bag level label per data point
%   labels_point - instance level label per data point

% Author: Changzhe Jiao, Alina Zare
% University of Missouri, Department of Electrical and Computer Engineering
% Email Address: cjr25@mail.missouri.edu; zarea@missouri.edu


addpath('./gen_synthetic_data_code')
addpath('./synthetic_data')

load('E_truth')

% Generate Two Target Synthetic Dataset
parameters = setParameters();
parameters.E_target     = [1,2]; % index of target endmember
parameters.E_minus      = 3:6;   % index of background endmembers
[X,P,labels_bag,labels_point,bag_number,dataBagged] = gen_2tar_data(E_truth,parameters);

end