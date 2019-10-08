% Modified by Bingsen @2017-9-23 @2018-6-15
% Check
% ls -1 /brain/iCAN/home/xiongbingsen/CHS/Data/201*/*CHS/mri/anatomy
% ls -1 /brain/iCAN/home/xiongbingsen/CHS/Data/201*/*CHS/fmri/WM/unnormalized
% Unzip
% gunzip /brain/iCAN/home/xiongbingsen/CHS/Data/201*/*CHS/mri/anatomy/*.gz
% gunzip /brain/iCAN/home/xiongbingsen/CHS/Data/201*/*CHS/fmri/RS/unnormalized/*.gz

% Written by Hao (17/07/12)
% QinLab, BNU
% haolpsy@gmail.com
clear
restoredefaultpath

%% ------------------------------------------------------------------ Setup
preprocess  = 1;
moveexclude = 1;

spm_dir     = '/brain/iCAN/home/tianyanqiu/SPM/spm12';
scripts_dir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/Preprocessing/CHSFC';
newdata_dir = '/brain/iCAN/home/tianyanqiu/Backup/CHS/Data';
database    = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/Preprocessing/CHSFC/CHSFC_Image.xlsx';
[~,newsub_id,~] = xlsread(database,1,'B:B');   % Compare with [Y+M.txt]; Check below

proj_name   = 'CHS';
fmri_name   = {'FC'};   % {'RS';'EM';'WM';'MS';'FC'}
tr          = 2;
slice_order = [1:2:33 2:2:32];
t1_filter   = 'I';
func_filter = 'I';
data_type   = 'nii';

%% ------------------------------------------------------------- Preprocess
% SliceTiming = 'a > ar'; Realign = 'r > c'; Normalise = 'w'; Smooth = 's'.
addpath(genpath(spm_dir));
addpath(genpath(scripts_dir));

if preprocess == 1
    for isub = 1:length(newsub_id)
        for irun = 1:length(fmri_name)
            year_id = ['20',newsub_id{isub,1}(1:2)];
            disp ([newsub_id{isub},' Preprocessing Started']);
            
            t1_dir    = fullfile(newdata_dir,year_id,newsub_id{isub},'/mri/anatomy/');
            func_dir  = fullfile(newdata_dir,year_id,newsub_id{isub},'/fmri/',fmri_name{irun,1},'/unnormalized/');
            final_dir = fullfile(newdata_dir,year_id,newsub_id{isub},'/fmri/',fmri_name{irun,1},'/smoothed_spm12/');
            
            cd (func_dir)
            Preprocessing_Scripts1(func_dir,func_filter,t1_dir,t1_filter,slice_order,tr,data_type);
            Preprocessing_Scripts2(func_dir,func_filter,t1_dir,t1_filter,slice_order,tr,data_type);
            
            unix('rm arI.mat');
            unix('rm arI.nii');
            unix('rm c*meanarI.nii');
            unix('rm carI.nii');
            unix('rm meanarI_seg8.mat');
            
            rp_dirf       = fullfile(func_dir,'rp_arI.txt');
            vg_dirf       = fullfile(func_dir,'VolumRepair_GlobalSignal.txt');
            mean_dirf     = fullfile(func_dir,'meanarI.nii');
            smooth_dirf   = fullfile(func_dir,'swcarI.nii');
            nosmooth_dirf = fullfile(func_dir,'wcarI.nii');
            
            mkdir(final_dir)
            unix(['mv ',rp_dirf,' ',final_dir]);
            unix(['mv ',vg_dirf,' ',final_dir]);
            unix(['mv ',mean_dirf,' ',final_dir]);
            unix(['mv ',smooth_dirf,' ',final_dir]);
            unix(['mv ',nosmooth_dirf,' ',final_dir]);
            
            cd (t1_dir)
            unix('rm I_seg8.mat');
            unix('rm y_I.nii');
        end
    end
end

%% ----------------------------------------------------- Movement Exclusion
cd (scripts_dir)
if moveexclude == 1
    for irun = 1:length(fmri_name)
        mConfigName = [proj_name,'_MoveExclusionConfig_',fmri_name{irun,1},'.m'];
        mConfig = fopen (mConfigName,'a');
        fprintf (mConfig,'%s\n',['paralist.ServerPath        = ''',newdata_dir,''';']);
        fprintf (mConfig,'%s\n','paralist.PreprocessedFolder = ''smoothed_spm12'';');
        fprintf (mConfig,'%s\n',['[~,newsub_id,~]            = xlsread( ''',database,''',1,''B:B'');']);   % 
        fprintf (mConfig,'%s\n','paralist.SubjectList        = newsub_id;');
        fprintf (mConfig,'%s\n',['paralist.SessionList       = {''',fmri_name{irun,1},'''};']);
        fprintf (mConfig,'%s\n','paralist.ScanToScanCrit     = 0.5;');
        MovementExclusion(mConfigName);
    end
end

%% ------------------------------------------------------------------- Done
cd (scripts_dir)
disp ('All Done');