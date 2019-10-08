clear;
clc;

basedir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC/Contrast';
cd(basedir);
contrastNames = cellstr(char('CSp','CSm','CSpE','CSpL','CSmE','CSmL','UCS','CSp_CSm','CSpE_CSmE','CSpL_CSmL'))';
contrastVecs  = {
    [ 1,1,0,0,0, 0,0,0,0,0,0],...%CSp
    [ 0,0,1,1,0, 0,0,0,0,0,0],...%CSm
    [ 1,0,0,0,0, 0,0,0,0,0,0],...
    [ 0,1,0,0,0, 0,0,0,0,0,0],...
    [ 0,0,1,0,0, 0,0,0,0,0,0],...
    [ 0,0,0,1,0, 0,0,0,0,0,0],...
    [ 0,0,0,0,1, 0,0,0,0,0,0],...
    [ 1,1,-1,-1,0, 0,0,0,0,0,0],...
    [ 1,0,-1,0,0, 0,0,0,0,0,0],...
    [ 0,1,0,-1,0, 0,0,0,0,0,0]
    }; 
% taskdesign.m
% names{1} = ['CSp']
% names{2} = ['CSm']
% names{3} = ['CSpE']
% names{4} = ['CSpL']
% names{5} = ['CSmE']
% names{6} = ['CSmL']
% names{7} = ['UCS']
% names{8} = ['CSp-CSm']
% names{9} = ['CSpE-CSmE']
% names{10} = ['CSpL_CSmL']
numTContrasts = 10;
clear basedir;
save Contrasts_CHSFC_EL.mat % taskname
