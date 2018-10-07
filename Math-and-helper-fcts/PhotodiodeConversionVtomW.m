function [laser_power_in_mW, std_laser_power_in_mW] = PhotodiodeConversionVtomW(laser_power_in_V,std_laser_power_in_V)

%Calibration for ThorLabs photodiode DET36A
%Calibrated by Clarice on Oct 1 2011
%Photodiode line going into DAQ with a 1.5MOhm resistor in parallel ("load", between signal and GND)

laser_power_in_mW =0.4657*laser_power_in_V -0.001912;

%error propagation (CDA)
%factor that multiplies laser_power_in_V
std_laser_power_in_mW = (0.4657)*std_laser_power_in_V;