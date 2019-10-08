clear;
clc;

basedir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/CHSFC/Dependence';
cd(basedir);

contrastNames = cellstr(char('CSp_123','CSp_456','CSp_7891011','CSp_12131415','CSm_123','CSm_456','CSm_7891011','CSm_12131415'))';
contrastVecs = {
    [ 1,0,0,0,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,1,0,0,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,1,0,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,1,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,1,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,0,1,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,0,0,1,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,0,0,0,1, 0,0,0,0,0,0]
    };
numTContrasts = 8;
% taskdesign.m
% names{1} = ['CSp_123']
% names{2} = ['CSp_456']
% names{3} = ['CSp_7891011']
% names{4} = ['CSp_12131415']
% names{5} = ['CSm_123']
% names{6} = ['CSm_456']
% names{7} = ['CSm_7891011']
% names{8} = ['CSm_12131415']
clear basedir;
save Contrasts_CHSFC_3354.mat % taskname