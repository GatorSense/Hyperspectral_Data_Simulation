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


****************************************************************
