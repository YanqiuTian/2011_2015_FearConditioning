% Modified by Bingsen @2017-9-23 @2018-5-12 @2018-6-15
% Check IndividualStats.m

% Written by Lei Hao
% haolpsy@gmail.com
% 2017/07/11
clear
restoredefaultpath;

%% ----------------------------------------------------------------- Set up
spm_dir     = '/brain/iCAN/home/tianyanqiu/SPM/spm12';
scripts_dir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC';
newdata_dir = '/brain/iCAN/home/tianyanqiu/DST/Data';
stats_dir   = '/brain/iCAN/home/tianyanqiu/DST/Results_individualStats/DST_EL_CSpu';
database    = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC/DSTFC_Brain.xlsx';
[~,newsub_id,~] = xlsread(database,1,'B:B');   %  Check below

proj_name     = 'DST';
task_name     = 'FC';
fmri_runs     = 1;
fmri_name     = 'FC';  % multiple('Sess1'',''Sess2'',''Sess3')
design_name   = 'taskdesign.m';
contrast_name = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC/Contrast/Contrasts_CHSFC_EL.mat';

%% ------------------------ Individual Analysis ------------------------ %%
addpath(genpath(spm_dir));
addpath(genpath(scripts_dir));

cd(scripts_dir)
if ~exist('Log','dir')
    mkdir(fullfile(scripts_dir,'Log'))
end

iConfigName = [proj_name,task_name,'_IndividualStats_Config.m'];
iConfig     = fopen(iConfigName,'a');

fprintf(iConfig,'%s\n', 'paralist.data_type           = ''nii'';');
fprintf(iConfig,'%s\n', 'paralist.pipeline            = ''swcar'';');
fprintf(iConfig,'%s\n',['paralist.server_path         = ''',newdata_dir,''';']);
fprintf(iConfig,'%s\n',['paralist.stats_path          = ''',stats_dir,''';']);
fprintf(iConfig,'%s\n', 'paralist.parent_folder       = '''';');
fprintf(iConfig,'%s\n',['[~,newsub_id,~]              = xlsread( ''',database,''',1,''B:B'');']);   % 
fprintf(iConfig,'%s\n', 'paralist.subjectlist         = newsub_id;');
if fmri_runs == 1
    fprintf (iConfig,'%s\n',...
                       ['paralist.exp_sesslist        = ''',fmri_name,''';']);
end
if fmri_runs > 1
    fprintf(iConfig,'%s\n',...
                       ['paralist.exp_sesslist        = {''',fmri_name,'''};']);
end
fprintf(iConfig,'%s\n',['paralist.task_dsgn           = ''',design_name,''';']);
fprintf(iConfig,'%s\n',['paralist.contrastmat         = ''',contrast_name,''';']);
fprintf(iConfig,'%s\n', 'paralist.preprocessed_folder = ''smoothed_spm12'';');
fprintf(iConfig,'%s\n',['paralist.stats_folder        = ''',task_name,'/stats_spm12_swcar'';']);
fprintf(iConfig,'%s\n', 'paralist.include_mvmnt       = 1;');

fprintf(iConfig,'%s\n', 'paralist.include_volrepair   = 0;');
fprintf(iConfig,'%s\n', 'paralist.volpipeline         = ''swavr'';');
fprintf(iConfig,'%s\n', 'paralist.volrepaired_folder  = ''volrepair_spm12'';');
fprintf(iConfig,'%s\n', 'paralist.repaired_stats      = ''stats_spm12_VolRepair'';');
fprintf(iConfig,'%s\n',['paralist.template_path       = ''',fullfile(scripts_dir,'Dependence'),''';']);

IndividualStats(iConfigName)

%% All Done
disp ('All Done');