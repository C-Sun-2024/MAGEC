% This program calculates the equilibrium distribution of C-H-O-S volatiles
% (H2, H2O, CO, CO2, CH4, H2S, SO2, S2, COS, O2) in gas-melt coupled systems.
% 
% Program Name: MAGEC (Magma And Gas Equilibrium Calculator)
% 
% Author: Chenguang Sun
% Copyright, 2025
% 
% Email: csun@jsg.utexas.edu
% Date: April 27, 2025
% 
% Key updates:
% 1. Additional options for CO2 and H2O solubility models
% 2. Corrected CO solubility models
% 
% If you use this program, please cite
%       1. Sun & Yao (2024) EPSL
%       2. Sun & Lee (2022) GCA
% 
% *********************************************************************
% How to run the program:
% 
% 1. Input T/P/logfO2 (or Fe3+/FeT) and compositions in the input file (.xlsx).
%    Make sure you use different names for the input and output files.
%    The batch data could be polybaric/isobaric/adiabatic degassing.
%
% 2. Modify the "settings" in the input file.
% 
% 3. Open [Run_MAGEC_2024_v2.m] in Matlab
% 
% 4. Go to [Editor] Tab in Matlab and click [Run] button.
% *********************************************************************

clc;clear;close all;

input_file = 'Input_Canary_new MAGEC.xlsx';
output_file = 'Output_Canary_new MAGEC.xlsx';

% input_file = 'Input_Canary_Nash19-KC91.xlsx';
% output_file = 'Output_Canary_Nash19-KC91.xlsx';


output = MAGEC_Solver_v1b(input_file,output_file);
