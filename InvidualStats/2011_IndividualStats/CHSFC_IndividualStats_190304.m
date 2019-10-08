% Modified by Bingsen @2017-9-23
% Check IndividualStats.m
% Check .nii.gz : ls   /brain/iCAN/home/tianyanqiu/CHS/Data/201*/*CHS/fmri/FC/smoothed_spm12
% Gzip .nii file: gzip /brain/iCAN/home/tianyanqiu/CHS/Data/201*/*CHS/fmri/FC/smoothed_spm12/swcarI.nii

% Written by Lei Hao
% haolpsy@gmail.com
% 2017/07/11
clear
restoredefaultpath;

%% ------------------------------ Set Up ------------------------------- %%
% Basic Configure
SessNum     = 1;
SPMDir      = '/brain/iCAN/home/tianyanqiu/SPM/spm12';
ScriptDir   = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/CHSFC';
DataDir     = '/brain/iCAN/home/tianyanqiu/Backup/CHS/Data';
StatDir     = '/brain/iCAN/home/tianyanqiu/Backup/CHS/Result_IndividualStats/2011_CSpE_CSpL';
SubInfo     = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/CHSFC/CHSFC_Image.xlsx';
[~,SubID,~] = xlsread(SubInfo,1,'B:B');  % Check: xlsread( ''',SubInfo,''',1,''B:B'');

ProjName    = 'CHS';
TaskName    = 'FC';
SessName    = 'FC';  % Single Sess: 'Sess'; Multiple Sess: 'Sess1'',''Sess2'',''Sess3'
DsgnName    = 'task_design_EL.m'; % taskdesign
ContName    = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/CHSFC/Dependence/Contrasts_CHSFC.mat'; % contrast


%% The following do not need to be modified
%% ------------------------ Individual Analysis ------------------------ %%
addpath (genpath(SPMDir));
addpath (genpath(ScriptDir));

cd (ScriptDir)
if ~exist('Log','dir')
    mkdir (fullfile(ScriptDir,'Log'))
end

iConfigName = [ProjName,TaskName,'_IndividualStats_Config.m'];
iConfig     = fopen(iConfigName,'a');

fprintf (iConfig,'%s\n', 'paralist.data_type           = ''nii'';');
fprintf (iConfig,'%s\n', 'paralist.pipeline            = ''swcar'';');
fprintf (iConfig,'%s\n',['paralist.server_path         = ''',DataDir,''';']);
fprintf (iConfig,'%s\n',['paralist.stats_path          = ''',StatDir,''';']);
fprintf (iConfig,'%s\n', 'paralist.parent_folder       = '''';');
fprintf (iConfig,'%s\n',['[~,SubID,~]                  = xlsread( ''',SubInfo,''',1,''B:B'');']);  %
fprintf (iConfig,'%s\n', 'paralist.subjectlist = SubID;');
if SessNum == 1
    fprintf (iConfig,'%s\n',...
                        ['paralist.exp_sesslist        = ''',SessName,''';']);
end
if SessNum > 1
    fprintf (iConfig,'%s\n',...
                        ['paralist.exp_sesslist        = {''',SessName,'''};']);
end
fprintf (iConfig,'%s\n',['paralist.task_dsgn           = ''',DsgnName,''';']);
fprintf (iConfig,'%s\n',['paralist.contrastmat         = ''',ContName,''';']);
fprintf (iConfig,'%s\n', 'paralist.preprocessed_folder = ''smoothed_spm12'';');
fprintf (iConfig,'%s\n',['paralist.stats_folder        = ''',TaskName,'/stats_spm12_swcar'';']);
fprintf (iConfig,'%s\n', 'paralist.include_mvmnt       = 1;');

fprintf (iConfig,'%s\n', 'paralist.include_volrepair   = 0;');
fprintf (iConfig,'%s\n', 'paralist.volpipeline         = ''swavr'';');
fprintf (iConfig,'%s\n', 'paralist.volrepaired_folder  = ''volrepair_spm12'';');
fprintf (iConfig,'%s\n', 'paralist.repaired_stats      = ''stats_spm12_VolRepair'';');
fprintf (iConfig,'%s\n',['paralist.template_path       = ''',fullfile(ScriptDir,'Dependence'),''';']);

IndividualStats(iConfigName)

% cd (ScriptDir)
% movefile (iConfigName,fullfile(ScriptDir,'Log'))
% movefile ('IndividualStats-*',fullfile(ScriptDir,'Log'))

%% All Done
clear
disp ('All Done');