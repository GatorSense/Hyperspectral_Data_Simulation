function [parameters] = setParameters()


parameters.E_target     = 1; %index of target endmember
parameters.E_minus      = 2:4; %index of background endmembers
parameters.num_pbags    = 2; % No. of positive bag
parameters.num_nbags    = 3; % No. of negative bag
parameters.num_points   = 1000; % No. of points in each bag
parameters.n_tar        = 250; % No. of target points in each positive bag
parameters.N_b          = 0; % minimum No. of background constituent background endmember in target point
parameters.Pt_mean      = 0.55; % mean target porportion value in target points
parameters.sigma        = 1; %parameter controlling variance of Dirichlet distribution
parameters.expect_SdB   = 10; % data noise level


end

