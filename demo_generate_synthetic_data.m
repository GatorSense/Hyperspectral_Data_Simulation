
function [X,P,labels_bag,labels_point]= demo_generate_synthetic_data()

% This function generates synthetic data following definition of multiple instance learning problem

% REFERENCE :
% C. Jiao, A. Zare, 
% Functions of Multiple Instances for Learning Target Signatures,? 
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

E_t=E_truth(:,1); %set target endmember
E_minus=E_truth(:,2:4); %set background endmembers
num_pbags=2; % No. of positive bag
num_nbags=3; % No. of negative bag
num_points=1000; % No. of points in each bag
n_tar=250; % No. of target points in each positive bag
N_b=0; % minimum No. of background constituent background endmember in target point
Pt_mean=0.55; % mean target porportion value in target points
sigma=1; %parameter controlling variance of Dirichlet distribution
expect_SdB=10; % data noise level

[X,P,labels_bag,labels_point]=gen_multi_tar_mixed_data(E_t,E_minus,num_pbags,num_nbags,num_points,n_tar,N_b,Pt_mean,sigma,expect_SdB);
labels_bag=reshape(labels_bag',1,(num_pbags+num_nbags)*num_points);
labels_point=reshape(labels_point',1,(num_pbags+num_nbags)*num_points);










