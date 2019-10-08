clear;
clc;

basedir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC/Contrast';
cd(basedir);
contrastNames = cellstr(char('CSp_123456','CSp_7891011','CSp_1213141516','CSp_1718192021','CSm_123','CSm_456','CSm_7891011','CSm_12131415'))';
contrastVecs  = {
    [ 1,0,0,0,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,1,0,0,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,1,0,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,1,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,1,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,0,1,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,0,0,1,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,0,0,0,1, 0,0,0,0,0,0]
    }; 
% taskdesign.m
% names{1} = ['CSp_123456']
% names{2} = ['CSp_7891011']
% names{3} = ['CSp_1213141516']
% names{4} = ['CSp_1718192021']
% names{5} = ['CSm_123']
% names{6} = ['CSm_456']
% names{7} = ['CSm_7891011']
% names{8} = ['CSm_12131415']
numTContrasts = 8;
clear basedir;
save Contrasts_CHSFC_6555.mat % taskname
