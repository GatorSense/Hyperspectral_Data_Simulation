# Hyperspectral_Data_Simulation

Multiple instance learning bag generation code for the ASTER 2.0 hyperspectral library data

************

### Demo  
demo_generate_synthetic_data.m                                      -  generates synthetic data 

************

### Files

gen_synthetic_data_code: //code to generate data

add_noise_to_dB.m                                                   -  adds Gaussian white noise to synthetic data  
drchrnd.m                                                           -  generates random vector following Dirichlet distribution  
gen_individual_LMM_point.m                                          -  generates individual synthetic data point following the linear mixing model  
gen_multi_tar_mixed_data.m                                          -  generates synthetic data set following the definition of multiple instance learning problem  

************

synthetic_data: //raw data files and pregenerated data files

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
 
Email Address: azare@ece.ufl.edu
 
University of Florida,  Department of Electrical and Computer Engineering


****************************************************************
