clear all; clc
basedir='/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC';
DataPath1='/brain/iCAN/home/tianyanqiu/DST/Data/';
DataPath2='/fmri/FC/task_design/';

cd(basedir);
load('database_2016_14_88.mat');
load('FC_S14_S88_0s.mat');

% subid=1;
% response=2; %0ismiss;1isforget;2isfamilarity;3isremember
% response_time=3;
% type=5; % 11isD2Think;22isD2NotThink;33isD1Think;44isD1NotThink;
% onset_time=6;

for i=6:67 % for sub1-4, the number of trials is 30, else is 36
    
%     matrix=FC_S14_S73_0s(30*(i-1)+1:i*30,:);
%     
%     onset_CSplus=matrix(matrix(:,5)==11, 2);
%     durations_CSplus=matrix(matrix(:,5)==11, 3);
%     
%     onset_CSminus=matrix(matrix(:,5)==21, 2);
%     durations_CSminus=matrix(matrix(:,5)==21, 3);
%     
%     onset_UCS=matrix(matrix(:,4)~=0, 4);
%     durations_UCS=[ones(size(onset_UCS,1), 1)*0];


    matrix=FC_S14_S88_0s(30*4+36*(i-5)+1:30*4+36*(i-4),:);
    
    onset_CSplus=matrix(matrix(:,5)==11, 2);
    onset_CSpE=onset_CSplus(1:10,1);
    onset_CSpL=onset_CSplus(11:21,1);
    durations_CSplus=matrix(matrix(:,5)==11, 3);
    durations_CSpE=durations_CSplus(1:10,1);
    durations_CSpL=durations_CSplus(11:21,1);

    
    onset_CSminus=matrix(matrix(:,5)==21, 2);
    onset_CSmE=onset_CSminus(1:7,1);
    onset_CSmL=onset_CSminus(8:15,1);
    durations_CSminus=matrix(matrix(:,5)==21, 3);
    durations_CSmE=durations_CSminus(1:7,1);
    durations_CSmL=durations_CSminus(8:15,1);

    
    onset_UCS=matrix(matrix(:,4)~=0, 4);
    durations_UCS=[ones(size(onset_UCS,1), 1)*0];


subject_id=matrix(1,1);
tem=cell2mat(database(:,1));
index=find(ismember(tem,subject_id));
file_id= database{index,2};
yearid=regexp(database{index,3},'201.','match','once');



OutPath=strcat(DataPath1,yearid,'/',file_id,DataPath2);
mkdir(OutPath);
cd(OutPath);

    
    fp=fopen('taskdesign_EL.m','w');
    fprintf(fp, '%s\n', 'sess_name =''FC'';');
  
    fprintf(fp, '%s\n','names{1}   = [''CSpE''];'); 
    onset_CSpE = num2cell(onset_CSpE);
    fprintf(fp, [ ...
        'onsets{1}    = [', repmat('%f ', 1, length(onset_CSpE)), '];\n'], onset_CSpE{:});
    durations_CSpE = num2cell(durations_CSpE);
    fprintf(fp, [ ...
        'durations{1}    = [', repmat('%f ', 1, length(durations_CSpE)), '];\n'], durations_CSpE{:});
    
    fprintf(fp, '%s\n','names{2}   = [''CSpL''];'); 
    onset_CSpL = num2cell(onset_CSpL);
    fprintf(fp, [ ...
        'onsets{2}    = [', repmat('%f ', 1, length(onset_CSpL)), '];\n'], onset_CSpL{:});
    durations_CSpL = num2cell(durations_CSpL);
    fprintf(fp, [ ...
        'durations{2}    = [', repmat('%f ', 1, length(durations_CSpL)), '];\n'], durations_CSpL{:});
    
      
    
    
    fprintf(fp, '%s\n','names{3}   = [''CSmE''];');
    onset_CSmE = num2cell(onset_CSmE);
    fprintf(fp, [...
        'onsets{3}    = [', repmat('%f ', 1, length(onset_CSmE)), '];\n'], onset_CSmE{:});
    durations_CSmE = num2cell(durations_CSmE);
    fprintf(fp, [ ...
        'durations{3}    = [', repmat('%f ', 1, length(durations_CSmE)), '];\n'], durations_CSmE{:});
    
    fprintf(fp, '%s\n','names{4}   = [''CSmL''];');
    onset_CSmL = num2cell(onset_CSmL);
    fprintf(fp, [...
        'onsets{4}    = [', repmat('%f ', 1, length(onset_CSmL)), '];\n'], onset_CSmL{:});
    durations_CSmL = num2cell(durations_CSmL);
    fprintf(fp, [ ...
        'durations{4}    = [', repmat('%f ', 1, length(durations_CSmL)), '];\n'], durations_CSmL{:});
    

    
    
    fprintf(fp, '%s\n','names{5}   = [''UCS''];'); 
    onset_UCS = num2cell(onset_UCS);
    fprintf(fp, [ ...
        'onsets{5}    = [', repmat('%f ', 1, length(onset_UCS)), '];\n'], onset_UCS{:});
    durations_UCS = num2cell(durations_UCS);
    fprintf(fp, [ ...
        'durations{5}    = [', repmat('%f ', 1, length(durations_UCS)), '];\n'], durations_UCS{:});
   
   
   
    fprintf(fp, '%s\n','rest_exists  = 1;');
    fprintf(fp, '%s\n','save task_design_EL.mat sess_name names onsets durations rest_exists');
    
% cd(basedir);
end