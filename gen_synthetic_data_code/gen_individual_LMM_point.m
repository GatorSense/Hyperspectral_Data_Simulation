function [x,p]=gen_individual_LMM_point(E_t,E_minus,label_bag,label_point,N_b,Pt_mean,sigma,expect_SdB)

%This function generates individual synthetic data point following the linear mixing model

% REFERENCE :
% C. Jiao, A. Zare, 
% Functions of Multiple Instances for Learning Target Signatures,? 
% IEEE transactions on Geoscience and Remote Sensing, Vol. 53, No. 8, Aug. 2015, DOI: 10.1109/TGRS.2015.2406334
%
% SYNTAX : [x,p]=gen_individual_LMM_point(E_t,E_minus,label_bag,label_point,N_b,Pt_mean,sigma,expect_SdB)

%Inputs:
%   E_T - target endemmber set
%   E_minus - background endmember set
%   label_bag - bag level label for current point
%   lbel_point - point level label for current point
%   N_b - minimal number of constituent background endmembers per point
%   Pt_mean - mean target proportion value 
%   sigma - proportion variance
%   expect_SdB - desired SNR

%Outputs:
%   x - per data point
%   p - proportion vector


% Author: Changzhe Jiao, Alina Zare
% University of Missouri, Department of Electrical and Computer Engineering
% Email Address: cjr25@mail.missouri.edu; zarea@missouri.edu
% Created: October, 2013
% Latest Revision: January, 2015
%
% This product is Copyright (c) 2015 University of Missouri
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions
% are met:
%
%   1. Redistributions of source code must retain the above copyright
%      notice, this list of conditions and the following disclaimer.
%   2. Redistributions in binary form must reproduce the above copyright
%      notice, this list of conditions and the following disclaimer in the
%      documentation and/or other materials provided with the distribution.
%   3. Neither the name of the University nor the names of its contributors
%      may be used to endorse or promote products derived from this software
%      without specific prior written permission.
%
% THIS SOFTWARE IS PROVIDED BY THE UNIVERSITY OF MISSOURI AND
% CONTRIBUTORS ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,
% INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
% MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
% DISCLAIMED.  IN NO EVENT SHALL THE UNIVERSITY OR CONTRIBUTORS
% BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
% EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
% LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES,
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
% HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
% OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
% SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.



T=size(E_t,2);
M=size(E_minus,2);

% generate a true positive target point
if label_bag&&label_point
    t=unidrnd(T);
    m=unidrnd(M-(N_b-1))+(N_b-1);
    
    sq_T=randperm(T);
    sq_M=randperm(M);
    
    index_t=sq_T(1:t);
    index_m=sq_M(1:m);
    
    current_pt_mean=Pt_mean(index_t);

    alpha=sigma*[current_pt_mean,((1-sum(current_pt_mean))/m)*ones(1,m)];
    
    index_all_endmember=[index_t index_m+T];
    p=zeros(T+M,1); 
    p(index_all_endmember)=drchrnd(alpha,1);
    
    current_sig=[E_t E_minus]*p;
    
    if isnan(expect_SdB)
       x=current_sig;
    else
       x=add_noise_to_dB(current_sig,expect_SdB); 
    end
    
    
%generate a non-target point    
else
    
    m=unidrnd(M-(max([N_b 1])-1))+(max([N_b 1])-1);
    
    alpha=sigma*ones(1,m);
    
    sq_M=randperm(M);
    index_m=sq_M(1:m)+T;
    
    p=zeros(T+M,1); 
    p(index_m)=drchrnd(alpha,1);
    current_sig=[E_t E_minus]*p;
    
    if isnan(expect_SdB)
       x=current_sig;
    else
       x=add_noise_to_dB(current_sig,expect_SdB); 
    end
end    

    
    
    


