# Hyperspectral_Data_Simulation

Multiple instance learning bag generation code for the ECOSTRESS Spectral Library 1.0 (Meerdink et al., 2019), formally known as the ASTER 2.0 hyperspectral library data (Baldridge et al., 2009). This code was written by Changzhe Jiao and Alina Zare and originally existed in the [FUMI repository](https://github.com/GatorSense/FUMI). It has been made it's own repository by James Bocinsky and Daniel Shats with editing help from Susan Meerdink.


If you use this code, cite it: James Bocinsky, Daniel Shats, & Alina Zare. (2019, April 29). GatorSense/Hyperspectral_Data_Simulation v1.0 (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.2653922 [![DOI](https://zenodo.org/badge/179329388.svg)](https://zenodo.org/badge/latestdoi/179329388)

************

### Demo  
demo_generate_synthetic_data.m                                      -  generates synthetic data 
demo_generate_synthetic_data_twotargets.m                           -  generates synthetic data that includes two targets
************

### Files

gen_synthetic_data_code: //code to generate data
* add_noise_to_dB.m                                                   -  adds Gaussian white noise to synthetic data  
drchrnd.m                                                           -  generates random vector following Dirichlet distribution  
* gen_individual_LMM_point.m                                          -  generates individual synthetic data point following the linear mixing model  
* gen_multi_tar_mixed_data.m                                          -  generates synthetic data set following the definition of multiple instance learning problem  
* gen_2tar_data.m                                                    - generates synthetic data for two targets
* plotSpectra.m                                                      - function that plots spectra/endmembers used as targets
* setParameters.m                                                    - function that sets parameters for generating synthetic data
************

synthetic_data: //raw data files and pregenerated data files
* E_truth.mat                                                         -  groundtruth endmember and wavelength information used to generate synthetic data (see below for specific filenames used from ECOSTRESS Spectral Library) 
* highly_mixed_data_pt_03.mat                                         -  highly mixed synthetic data with P_t_mean=0.3; bag-level and instance-level labels  
* highly_mixed_data_pt_05.mat                                         -  highly mixed synthetic data with P_t_mean=0.5; bag-level and instance-level labels  
* highly_mixed_data_pt_07.mat                                         -  highly mixed synthetic data with P_t_mean=0.7; bag-level and instance-level labels  
* noisy_data_SNR_10.mat                                               -  noisy synthetic data with SNR=10 dB; bag-level and instance-level labels  
* noisy_data_SNR_20.mat                                               -  noisy synthetic data with SNR=20 dB; bag-level and instance-level labels  
* noisy_data_SNR_30.mat                                               -  noisy synthetic data with SNR=30 dB; bag-level and instance-level labels  
* noisy_data_SNR_40.mat                                               -  noisy synthetic data with SNR=40 dB; bag-level and instance-level labels  
* random_data.mat                                                     -  random synthetic data; bag-level and instance-level labels  
* originalData.mat                                                    - table that contains sample names, wavelength, and original reflectance values from the ECOSTRESS Spectral Library.
* wavelengths.mat                                                     - array of wavelengths associated with spectra

****************************************************************

For any questions, please contact:

Alina Zare  
 
Email Address: azare@ece.ufl.edu
 
University of Florida,  Department of Electrical and Computer Engineering


****************************************************************
Endmembers/Spectra Extracted from ECOSTRESS Spectral Library:  
* Basalt: rock.igneous.basic.solid.vswir.ward34.jpl.perkin.spectrum  
* Pyroxenite: rock.igneous.ultramafic.solid.vswir.ward43.jpl.perkin.spectrum  
* Verde Antique: rock.metamorphic.marble.solid.vswir.ward98.jpl.perkin.spectrum  
* Phyllite: rock.metamorphic.phyllite.solid.vswir.ward85.jpl.perkin.spectrum  
* Slate: rock.metamorphic.slate.solid.vswir.ward91.jpl.perkin.spectrum  
* Quartz Conglomerate: rock.sedimentary.conglomerate.solid.vswir.ward48.jpl.perkin.spectrum  

************
References:

Meerdink, S. K., Hook, S. J., Roberts, D. A., & Abbott, E. A. (2019). The ECOSTRESS spectral library version 1.0. Remote Sensing of Environment, 230(111196), 1–8. https://doi.org/10.1016/j.rse.2019.05.015

Baldridge, A. M., Hook, S. J., Grove, C. I., & Rivera, G. (2009). The ASTER spectral library version 2.0. Remote Sensing of Environment, 113(4), 711–715. https://doi.org/10.1016/j.rse.2008.11.007
