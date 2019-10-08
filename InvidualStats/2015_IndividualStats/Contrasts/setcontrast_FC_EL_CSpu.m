clear;
clc;

basedir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC/Contrast';
cd(basedir);
contrastNames = cellstr(char('CSppE','CSppL','CSpuE','CSpuL','CSmE','CSmL','UCS','CSppE_CSmE','CSppL_CSmL','CSpuE_CSmE','CSpuL_CSmL'))';
contrastVecs  = {
    [ 1,0,0,0,0,0,0 0,0,0,0,0,0],...%CSppE
    [ 0,1,0,0,0,0,0 0,0,0,0,0,0],...%CSppL
    [ 0,0,1,0,0,0,0 0,0,0,0,0,0],...
    [ 0,0,0,1,0,0,0 0,0,0,0,0,0],...
    [ 0,0,0,0,1,0,0 0,0,0,0,0,0],...
    [ 0,0,0,0,0,1,0 0,0,0,0,0,0],...
    [ 0,0,0,0,0,0,1 0,0,0,0,0,0],...
    [ 1,0,0,0,-1,0,0 0,0,0,0,0,0],...
    [ 0,1,0,0,0,-1,0 0,0,0,0,0,0],...
    [ 0,0,1,0,-1,0,0 0,0,0,0,0,0],...
    [ 0,0,0,1,0,-1,0 0,0,0,0,0,0]
    }; 
% taskdesign.m
% names{1} = ['CSppE']
% names{2} = ['CSppL']
% names{3} = ['CSpuE']
% names{4} = ['CSpuL']
% names{5} = ['CSmE']
% names{6} = ['CSmL']
% names{7} = ['UCS']
% names{8} = ['CSppE_CSmE']
% names{9} = ['CSppL_CSmL']
% names{10} = ['CSpuE_CSmE']
% names{10} = ['CSpuL_CSmL']
numTContrasts = 11;
clear basedir;
save Contrasts_CHSFC_EL_CSpu.mat % taskname
