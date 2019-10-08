% CHSFC_gPPI('CHSFC_gPPI_config.m')
% rm -rf .../*/...

% Configuration file for gPPI.m
% Shaozheng Qin adapted for his poject on January 1, 2014
% Lei Hao adapted for his poject on September 12, 2017
%=========================================================================%
clear
restoredefaultpath

% Set Path
SPM_Dir    = '/brain/iCAN/home/tianyanqiu/SPM/spm8';
Script_Dir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/gPPI/CHSFC';

% Please specify the data server path
paralist.data_server = '/brain/iCAN/home/tianyanqiu/CHS/Data';

% added by genghaiyang specify the stats server path
paralist.server_path_stats = '/brain/iCAN/home/tianyanqiu/CHS/Result_IndividualStats/2011_new_onset';

% Please specify the parent folder of the static data
% For YEAR data structure, use the first one
% For NONE YEAR data structure, use the second one
paralist.parent_folder = '';

% Please specify the subject list file (.txt) or a cell array
subjlist = fullfile(Script_Dir, 'CHS_SubList.txt');

% Please specify the stats folder name (eg., stats_spm8)
paralist.stats_folder = '/FC/stats_spm12_swcar';

% get ROI file list
ROI_form = 'nii';
paralist.roi_nii_folder = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/gPPI/CHSFC/ROI/nii';

% Please specify the task to include
% set = { '1', 'task1', 'task2'} -> must exist in all sessions
% set = { '0', 'task1', 'task2'} -> does not need to exist in all sessions
paralist.tasks_to_include = {'1','CSpE','CSpL','CSmE','CSmL','UCS','fake'};

% Please specify the confound names
paralist.confound_names = {'R1', 'R2', 'R3', 'R4', 'R5', 'R6'};

% make T contrast
%     Pcon.Contrasts(1).left      = {['CSpE',' CSpL']};
%     Pcon.Contrasts(1).right     = {'none'};
%     Pcon.Contrasts(1).STAT      = 'T';
%     Pcon.Contrasts(1).Weighted  = 0;
%   % Pcon.Contrasts(1).MinEvents = 5;
%     Pcon.Contrasts(1).name      = 'CSp';
%     
%     Pcon.Contrasts(2).left      = {['CSmE','CSmL']};
%  	Pcon.Contrasts(2).right     = {'none'};
%     Pcon.Contrasts(2).STAT      = 'T';
%     Pcon.Contrasts(2).Weighted  = 0;
%   % Pcon.Contrasts(2).MinEvents = 5;
%     Pcon.Contrasts(2).name      = 'CSm';
    
    Pcon.Contrasts(1).left      = {'CSpE'};
   	Pcon.Contrasts(1).right     = {'none'};
    Pcon.Contrasts(1).STAT      = 'T';
    Pcon.Contrasts(1).Weighted  = 0;
  % Pcon.Contrasts(1).MinEvents = 5;
    Pcon.Contrasts(1).name      = 'CSpE';
    
    Pcon.Contrasts(2).left      = {'CSpL'};
 	  Pcon.Contrasts(2).right     = {'none'};
    Pcon.Contrasts(2).STAT      = 'T';
    Pcon.Contrasts(2).Weighted  = 0;
  % Pcon.Contrasts(2).MinEvents = 5;
    Pcon.Contrasts(2).name      = 'CSpL';

    Pcon.Contrasts(3).left      = {'CSmE'};
   	Pcon.Contrasts(3).right     = {'none'};
    Pcon.Contrasts(3).STAT      = 'T';
    Pcon.Contrasts(3).Weighted  = 0;
  % Pcon.Contrasts(3).MinEvents = 5;
    Pcon.Contrasts(3).name      = 'CSmE';
    
    Pcon.Contrasts(4).left      = {'CSmL'};
   	Pcon.Contrasts(4).right     = {'none'};
    Pcon.Contrasts(4).STAT      = 'T';
    Pcon.Contrasts(4).Weighted  = 0;
  % Pcon.Contrasts(4).MinEvents = 5;
    Pcon.Contrasts(4).name      = 'CSmL';
    
    Pcon.Contrasts(5).left      = {'UCS'};
 	  Pcon.Contrasts(5).right     = {'none'};
    Pcon.Contrasts(5).STAT      = 'T';
    Pcon.Contrasts(5).Weighted  = 0;
  % Pcon.Contrasts(5).MinEvents = 5;
    Pcon.Contrasts(5).name      = 'UCS';

    Pcon.Contrasts(6).left      = {'fake'};
   	Pcon.Contrasts(6).right     = {'none'};
    Pcon.Contrasts(6).STAT      = 'T';
    Pcon.Contrasts(6).Weighted  = 0;
  % Pcon.Contrasts(6).MinEvents = 5;
    Pcon.Contrasts(6).name      = 'fake';
    
%     Pcon.Contrasts(9).left      = {['CSpE','CSpL']};
%    	Pcon.Contrasts(9).right     = {['CSmE','CSmL']};
%     Pcon.Contrasts(9).STAT      = 'T';
%     Pcon.Contrasts(9).Weighted  = 0;
%   % Pcon.Contrasts(9).MinEvents = 5;
%     Pcon.Contrasts(9).name      = 'CSp_CSm';
    
    Pcon.Contrasts(7).left      = {'CSpE'};
 	  Pcon.Contrasts(7).right     = {'CSmE'};
    Pcon.Contrasts(7).STAT      = 'T';
    Pcon.Contrasts(7).Weighted  = 0;
  % Pcon.Contrasts(7).MinEvents = 5;
    Pcon.Contrasts(7).name      = 'CSpE_CSmE';

    Pcon.Contrasts(8).left      = {'CSpL'};
   	Pcon.Contrasts(8).right     = {'CSmL'};
    Pcon.Contrasts(8).STAT      = 'T';
    Pcon.Contrasts(8).Weighted  = 0;
  % Pcon.Contrasts(8).MinEvents = 5;
    Pcon.Contrasts(8).name      = 'CSpL_CSmL';
    

    


%% ===================================================================== %%
% Acquire Subject list
fid = fopen (subjlist);
paralist.subject_list = {};
Cnt_List = 1;
while ~feof (fid)
    linedata = textscan (fgetl (fid), '%s', 'Delimiter', '\t');
    paralist.subject_list (Cnt_List, :) = linedata {1}; %#ok<*SAGROW>
    Cnt_List = Cnt_List + 1;
end
fclose (fid);

% Acquire ROI file & list
ROI_list = dir (fullfile (paralist.roi_nii_folder, ['*.', ROI_form]));
ROI_list = struct2cell (ROI_list);
ROI_list = ROI_list (1, :);
ROI_list = ROI_list';

paralist.roi_file_list = {};
for roi_i = 1:length (ROI_list)
paralist.roi_file_list {roi_i,1} = fullfile (paralist.roi_nii_folder, ROI_list {roi_i, 1});
end

paralist.roi_name_list = strtok (ROI_list, '.');

% Add Path
addpath (genpath (SPM_Dir));
addpath (genpath (Script_Dir));