clear all; clc
basedir='/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC';
DataPath1='/brain/iCAN/home/tianyanqiu/DST/Data/';
DataPath2='/fmri/FC/task_design/';

cd(basedir);
load('database_2016_14_88.mat');
load('FC_S14_S88_0s_new_type_E_L.mat');

% subid=1;
% response=2; %0ismiss;1isforget;2isfamilarity;3isremember
% response_time=3;
% type=5; % 11isD2Think;22isD2NotThink;33isD1Think;44isD1NotThink;
% onset_time=6;

for i=5:67 % for sub1-4, the number of trials is 30, else is 36
    
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


    matrix=FC_S14_S88_0s_new_type_E_L(30*4+36*(i-5)+1:30*4+36*(i-4),:);

    onset_CSppE=matrix(matrix(:,5)==1111, 2);
    durations_CSppE=matrix(matrix(:,5)==1111, 3);
    
    onset_CSppL=matrix(matrix(:,5)==1112, 2);
    durations_CSppL=matrix(matrix(:,5)==1112, 3);
    
    onset_CSpuE=matrix(matrix(:,5)==1101, 2);
    durations_CSpuE=matrix(matrix(:,5)==1101, 3);
    
    onset_CSpuL=matrix(matrix(:,5)==1102, 2);
    durations_CSpuL=matrix(matrix(:,5)==1102, 3);
    
    onset_CSmE=matrix(matrix(:,5)==211, 2);
    durations_CSmE=matrix(matrix(:,5)==211, 3);
    
    onset_CSmL=matrix(matrix(:,5)==212, 2);
    durations_CSmL=matrix(matrix(:,5)==212, 3);
    
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

    
    fp=fopen('taskdesign.m','w');
    fprintf(fp, '%s\n', 'sess_name =''FC'';');
  
  
    fprintf(fp, '%s\n','names{1}   = [''CSppE''];'); 
    onset_CSppE = num2cell(onset_CSppE);
    fprintf(fp, [ ...
        'onsets{1}    = [', repmat('%f ', 1, length(onset_CSppE)), '];\n'], onset_CSppE{:});
    durations_CSppE = num2cell(durations_CSppE);
    fprintf(fp, [ ...
        'durations{1}    = [', repmat('%f ', 1, length(durations_CSppE)), '];\n'], durations_CSppE{:});
        
        
    fprintf(fp, '%s\n','names{2}   = [''CSppL''];'); 
    onset_CSppL = num2cell(onset_CSppL);
    fprintf(fp, [ ...
        'onsets{2}    = [', repmat('%f ', 1, length(onset_CSppL)), '];\n'], onset_CSppL{:});
    durations_CSppL = num2cell(durations_CSppL);
    fprintf(fp, [ ...
        'durations{2}    = [', repmat('%f ', 1, length(durations_CSppL)), '];\n'], durations_CSppL{:});
    
  
    fprintf(fp, '%s\n','names{3}   = [''CSpuE''];'); 
    onset_CSpuE = num2cell(onset_CSpuE);
    fprintf(fp, [ ...
        'onsets{3}    = [', repmat('%f ', 1, length(onset_CSpuE)), '];\n'], onset_CSpuE{:});
    durations_CSpuE = num2cell(durations_CSpuE);
    fprintf(fp, [ ...
        'durations{3}    = [', repmat('%f ', 1, length(durations_CSpuE)), '];\n'], durations_CSpuE{:});
    
    
    fprintf(fp, '%s\n','names{4}   = [''CSpuL''];'); 
    onset_CSpuL = num2cell(onset_CSpuL);
    fprintf(fp, [ ...
        'onsets{4}    = [', repmat('%f ', 1, length(onset_CSpuL)), '];\n'], onset_CSpuL{:});
    durations_CSpuL = num2cell(durations_CSpuL);
    fprintf(fp, [ ...
        'durations{4}    = [', repmat('%f ', 1, length(durations_CSpuL)), '];\n'], durations_CSpuL{:});
    
    
    fprintf(fp, '%s\n','names{5}   = [''CSmE''];');
    onset_CSmE = num2cell(onset_CSmE);
    fprintf(fp, [...
        'onsets{5}    = [', repmat('%f ', 1, length(onset_CSmE)), '];\n'], onset_CSmE{:});
    durations_CSmE = num2cell(durations_CSmE);
    fprintf(fp, [ ...
        'durations{5}    = [', repmat('%f ', 1, length(durations_CSmE)), '];\n'], durations_CSmE{:});
    
    
    fprintf(fp, '%s\n','names{6}   = [''CSmL''];');
    onset_CSmL = num2cell(onset_CSmL);
    fprintf(fp, [...
        'onsets{6}    = [', repmat('%f ', 1, length(onset_CSmL)), '];\n'], onset_CSmL{:});
    durations_CSmL = num2cell(durations_CSmL);
    fprintf(fp, [ ...
        'durations{6}    = [', repmat('%f ', 1, length(durations_CSmL)), '];\n'], durations_CSmL{:});
    
    
    fprintf(fp, '%s\n','names{7}   = [''UCS''];'); 
    onset_UCS = num2cell(onset_UCS);
    fprintf(fp, [ ...
        'onsets{7}    = [', repmat('%f ', 1, length(onset_UCS)), '];\n'], onset_UCS{:});
    durations_UCS = num2cell(durations_UCS);
    fprintf(fp, [ ...
        'durations{7}    = [', repmat('%f ', 1, length(durations_UCS)), '];\n'], durations_UCS{:});
   
   
   
    fprintf(fp, '%s\n','rest_exists  = 1;');
    fprintf(fp, '%s\n','save task_design_new.mat sess_name names onsets durations rest_exists');
    
% cd(basedir);
end