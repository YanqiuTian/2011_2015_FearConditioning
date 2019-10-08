%%CHS-FC taskdesign
%%YanqiuTian 2018
clc;clear;

% create file
path='/brain/iCAN/home/tianyanqiu/CHS_code/';
load([path,'taskdesign_database.mat']);
path_data1='/brain/iCAN/home/tianyanqiu/Backup/CHS/Data/2011/';
path_data2='/fmri/FC/task_design/';

for i=1:length(database)
    path_data=[path_data1,database{i,1},path_data2];
   % unix(sprintf('rm %s',[path_data,'taskdesign_old.m'])); %rm
    mkdir(path_data);  %create new folder
    unix(sprintf('cp %s %s',[path,'taskdesign_',database{i,2},'.m'],[path_data,'task_design_EL.m'])); %cp taskdesign to new folder and rename
end

