# Hyperspectral_Data_Simulation

Multiple instance learning bag generation code for the ASTER 2.0 hyperspectral library data

************

'...\FUMI_code_and_demo\FUMI_demos':  
demo_generate_synthetic_data.m                                      -  generates different type of synthetic data used in the synthetic experiment part of the referred paper  
demo_FUMI_random_data_repeat_Fig_2.m                                -  repeats the synthetic experiment of cFUMI and eFUMI on random data, corresponds to results shown in Fig. 2 of the referred paper  
demo_cFUMI_noisy_data_repeat_Fig_3_a.m                              -  repeats the synthetic experiment of cFUMI on noisy data with SNR 10, 20, 30 and 40 dB, corresponds to results shown in Fig. 3(a) of the referred paper  
demo_eFUMI_noisy_data_repeat_Fig_3_b.m                              -  repeats the synthetic experiment of eFUMI on noisy data with SNR 10, 20, 30 and 40 dB, corresponds to results shown in Fig. 3(b) of the referred paper.  


************

'...\FUMI_code_and_demo\gen_synthetic_data_code':
add_noise_to_dB.m                                                   -  adds Gaussian white noise to synthetic data  
drchrnd.m                                                           -  generates random vector following Dirichlet distribution  
gen_individual_LMM_point.m                                          -  generates individual synthetic data point following the linear mixing model  
gen_multi_tar_mixed_data.m                                          -  generates synthetic data set following the definition of multiple instance learning problem  

************

'...\FUMI_code_and_demo\synthetic_data':
E_truth.mat                                                         -  groundtruth endmember and wavelength information used to generate synthetic data  
highly_mixed_data_pt_03.mat                                         -  highly mixed synthetic data with P_t_mean=0.3; bag-level and instance-level labels  
highly_mixed_data_pt_05.mat                                         -  highly mixed synthetic data with P_t_mean=0.5; bag-level and instance-level labels  
highly_mixed_data_pt_07.mat                                         -  highly mixed synthetic data with P_t_mean=0.7; bag-level and instance-level labels  
noisy_data_SNR_10.mat                                               -  noisy synthetic data with SNR=10 dB; bag-level and instance-level labels  
noisy_data_SNR_20.mat                                               -  noisy synthetic data with SNR=20 dB; bag-level and instance-level labels  
noisy_data_SNR_30.mat                                               -  noisy synthetic data with SNR=30 dB; bag-level and instance-level labels  
noisy_data_SNR_40.mat                                               -  noisy synthetic data with SNR=40 dB; bag-level and instance-level labels  
random_data.mat                                                     -  random synthetic data; bag-level and instance-level labels  


****************************************************************

For any questions, please contact:

 Alina Zare  
 Email Address:azare@ece.ufl.edu
 University of Florida,  Department of Electrical and Computer Engineering

 Changzhe Jiao  
 Email Address:cjr25@mail.missouri.edu  
 University of Missouri, Department of Electrical and Computer Engineering  

****************************************************************

% This product is Copyright (c) 2015 C. Jiao, A. Zare
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
% SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE
