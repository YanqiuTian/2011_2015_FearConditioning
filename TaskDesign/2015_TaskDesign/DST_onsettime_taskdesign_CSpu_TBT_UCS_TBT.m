clear all; clc
basedir='/brain/iCAN/home/tianyanqiu/SPM12_scripts/IndividualStats/DSTFC';
DataPath1='/brain/iCAN/home/tianyanqiu/DST/Data/';
DataPath2='/fmri/FC/task_design/';

cd(basedir);
load('database_2016_14_88.mat');
load('FC_S14_S88_0s_new_type.mat');

% subid=1;
% response=2; %0ismiss;1isforget;2isfamilarity;3isremember
% response_time=3;
% type=5; % 11isD2Think;22isD2NotThink;33isD1Think;44isD1NotThink;
% onset_time=6;

 for i=5:67 % for sub1-4, the number of trials is 30, else is 36
    
%     matrix=FC_S14_S88_0s_new_type(30*(i-1)+1:i*30,:);
%     
%     onset_CSpp=matrix(matrix(:,5)==111, 2);
%     durations_CSpp=matrix(matrix(:,5)==111, 3);
%     
%     onset_CSpu=matrix(matrix(:,5)==110, 2);
%     durations_CSpu=matrix(matrix(:,5)==110, 3);
%     
%     onset_CSm=matrix(matrix(:,5)==21, 2);
%     durations_CSm=matrix(matrix(:,5)==21, 3);
%     
%     onset_UCS=matrix(matrix(:,4)~=0, 4);
%     durations_UCS=[ones(size(onset_UCS,1), 1)*0];

    
    matrix=FC_S14_S88_0s_new_type(30*4+36*(i-5)+1:30*4+36*(i-4),:);
    
    onset_CSpp=matrix(matrix(:,5)==111, 2);
    durations_CSpp=matrix(matrix(:,5)==111, 3);
    
    onset_CSpu=matrix(matrix(:,5)==110, 2);
    durations_CSpu=matrix(matrix(:,5)==110, 3);
    
    onset_CSm=matrix(matrix(:,5)==21, 2);
    durations_CSm=matrix(matrix(:,5)==21, 3);
    
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

    
    fp=fopen('taskdesign_TBT_UCSTBT.m','w');
    fprintf(fp, '%s\n', 'sess_name =''FC'';');
 


    n=13; % CSpp
    
    
    for m=1:n
        fprintf(fp, '%s\n',strcat('names{',num2str(m),'}   = [''CSpp_',num2str(m),'''];'));
        fprintf(fp, strcat('onsets{',num2str(m),'} = [',num2str(onset_CSpp(m)),'];\n'));
        fprintf(fp, strcat('durations{',num2str(m),'} = [',num2str(durations_CSpp(m)),'];\n'));
    end
   
    
    
    i=8; % CSpu
        for m=1:i
        fprintf(fp, '%s\n',strcat('names{',num2str(m+13),'}   = [''CSpu_',num2str(m+13),'''];'));
        fprintf(fp, strcat('onsets{',num2str(m+13),'} = [',num2str(onset_CSpu(m)),'];\n'));
        fprintf(fp, strcat('durations{',num2str(m+13),'} = [',num2str(durations_CSpu(m)),'];\n'));
    end
   
   
 j=15;  % CSm
        for m=1:j
        fprintf(fp, '%s\n',strcat('names{',num2str(m+21),'}   = [''CSm_',num2str(m+21),'''];'));
        fprintf(fp, strcat('onsets{',num2str(m+21),'} = [',num2str(onset_CSm(m)),'];\n'));
        fprintf(fp, strcat('durations{',num2str(m+21),'} = [',num2str(durations_CSm(m)),'];\n'));
        end
   
    
           
 k=13;  % UCS-TBT
        for m=1:k
        fprintf(fp, '%s\n',strcat('names{',num2str(m+36),'}   = [''UCS_',num2str(m+36),'''];'));
        fprintf(fp, strcat('onsets{',num2str(m+36),'} = [',num2str(onset_UCS(m)),'];\n'));
        fprintf(fp, strcat('durations{',num2str(m+36),'} = [',num2str(durations_UCS(m)),'];\n'));
        end
         
%     fprintf(fp, '%s\n','names{37}   = [''UCS''];');  % UCS-mean
%     onset_UCS = num2cell(onset_UCS);
%     fprintf(fp, [ ...
%         'onsets{37}    = [', repmat('%f ', 1, length(onset_UCS)), '];\n'], onset_UCS{:});
%     durations_UCS = num2cell(durations_UCS);
%     fprintf(fp, [ ...
%         'durations{37}    = [', repmat('%f ', 1, length(durations_UCS)), '];\n'], durations_UCS{:});
   
    
                
   
    fprintf(fp, '%s\n','rest_exists  = 1;');
    fprintf(fp, '%s\n','save taskdesign_TBT_UCSTBT.mat sess_name names onsets durations rest_exists');
    
% cd(basedir);
end