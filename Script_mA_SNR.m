% Script to Analyze the SNR of Images Acquired with Different mA
% Written by F Contijoch, PhD for Winter 2022 BENG 278B
% Edited by Yuanshan Wu,James Lo
clear all;

% Define parameters of interest
speed = 280;
snr_number = 6;
data_path = '/Users/wuyuanshan/Desktop/BENG278/Lab1/BENG-278-Lab1/data/';

addpath('../functions')

% Define path of interest
fld_name=[data_path 'Hole_NoFatRing_50mA_' num2str(speed) 'ms_100kV_' num2str(snr_number)];

% Load images
[imgs]=load_images(fld_name);

%% Lets compare the object to the known design 
sliceNo = 38; %Pick the slice number of the Hole phantom

imgA(find(imgA == -2000)) = 0;
imgA=imgs(:,:,sliceNo);
figure; imshow(imgA,[0,max(max(imgA))]);

% The units on the spec sheet are in millimeters
% Note, the image if left-right flipped relative to the spec sheet

% Note, pixels at the edge of the circle are labeled as -3024. Don't let
% that confused your measures
