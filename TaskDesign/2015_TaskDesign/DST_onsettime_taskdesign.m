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


    matrix=FC_S14_S88_0s(30*4+36*(i-5)+1:30*4+36*(i-4),:);
    
    onset_CSplus=matrix(matrix(:,5)==11, 2);
    onset_CSp123456=onset_CSplus(1:6,1);
    onset_CSp7891011=onset_CSplus(7:11,1);
    onset_CSp1213141516=onset_CSplus(12:16,1);
    onset_CSp1718192021=onset_CSplus(17:21,1);
    durations_CSplus=matrix(matrix(:,5)==11, 3);
    durations_CSp123456=durations_CSplus(1:6,1);
    durations_CSp7891011=durations_CSplus(7:11,1);
    durations_CSp1213141516=durations_CSplus(12:16,1);
    durations_CSp1718192021=durations_CSplus(17:21,1);
    
    
    onset_CSminus=matrix(matrix(:,5)==21, 2);
    onset_CSm123=onset_CSminus(1:3,1);
    onset_CSm4567=onset_CSminus(4:7,1);
    onset_CSm891011=onset_CSminus(8:11,1);
    onset_CSm12131415=onset_CSminus(12:15,1);
    durations_CSminus=matrix(matrix(:,5)==21, 3);
    durations_CSm123=durations_CSminus(1:3,1);
    durations_CSm4567=durations_CSminus(4:7,1);
    durations_CSm891011=durations_CSminus(8:11,1);
    durations_CSm12131415=durations_CSminus(12:15,1);
    
    
    onset_UCS=matrix(matrix(:,4)~=0, 4);
    durations_UCS=[ones(size(onset_UCS,1), 1)*2];


subject_id=matrix(1,1);
tem=cell2mat(database(:,1));
index=find(ismember(tem,subject_id));
file_id= database{index,2};
yearid=regexp(database{index,3},'201.','match','once');



OutPath=strcat(DataPath1,yearid,'/',file_id,DataPath2);
mkdir(OutPath);
cd(OutPath);

    
    fp=fopen('taskdesign_6555.m','w');
    fprintf(fp, '%s\n', 'sess_name =''FC'';');
  
    fprintf(fp, '%s\n','names{1}   = [''CSp123456''];'); 
    onset_CSp123456 = num2cell(onset_CSp123456);
    fprintf(fp, [ ...
        'onsets{1}    = [', repmat('%f ', 1, length(onset_CSp123456)), '];\n'], onset_CSp123456{:});
    durations_CSp123456 = num2cell(durations_CSp123456);
    fprintf(fp, [ ...
        'durations{1}    = [', repmat('%f ', 1, length(durations_CSp123456)), '];\n'], durations_CSp123456{:});
    
    fprintf(fp, '%s\n','names{2}   = [''CSp7891011''];'); 
    onset_CSp7891011 = num2cell(onset_CSp7891011);
    fprintf(fp, [ ...
        'onsets{2}    = [', repmat('%f ', 1, length(onset_CSp7891011)), '];\n'], onset_CSp7891011{:});
    durations_CSp7891011 = num2cell(durations_CSp7891011);
    fprintf(fp, [ ...
        'durations{2}    = [', repmat('%f ', 1, length(durations_CSp7891011)), '];\n'], durations_CSp7891011{:});
    
    fprintf(fp, '%s\n','names{3}   = [''CSp1213141516''];'); 
    onset_CSp1213141516 = num2cell(onset_CSp1213141516);
    fprintf(fp, [ ...
        'onsets{3}    = [', repmat('%f ', 1, length(onset_CSp1213141516)), '];\n'], onset_CSp1213141516{:});
    durations_CSp1213141516 = num2cell(durations_CSp1213141516);
    fprintf(fp, [ ...
        'durations{3}    = [', repmat('%f ', 1, length(durations_CSp1213141516)), '];\n'], durations_CSp1213141516{:});
 
    fprintf(fp, '%s\n','names{4}   = [''CSp1718192021''];'); 
    onset_CSp1718192021 = num2cell(onset_CSp1718192021);
    fprintf(fp, [ ...
        'onsets{4}    = [', repmat('%f ', 1, length(onset_CSp1718192021)), '];\n'], onset_CSp1718192021{:});
    durations_CSp1718192021 = num2cell(durations_CSp1718192021);
    fprintf(fp, [ ...
        'durations{4}    = [', repmat('%f ', 1, length(durations_CSp1718192021)), '];\n'], durations_CSp1718192021{:});    
    
    
    fprintf(fp, '%s\n','names{5}   = [''CSm123''];');
    onset_CSm123 = num2cell(onset_CSm123);
    fprintf(fp, [...
        'onsets{5}    = [', repmat('%f ', 1, length(onset_CSm123)), '];\n'], onset_CSm123{:});
    durations_CSm123 = num2cell(durations_CSm123);
    fprintf(fp, [ ...
        'durations{5}    = [', repmat('%f ', 1, length(durations_CSm123)), '];\n'], durations_CSm123{:});
    
    fprintf(fp, '%s\n','names{6}   = [''CSm4567''];');
    onset_CSm4567 = num2cell(onset_CSm4567);
    fprintf(fp, [...
        'onsets{6}    = [', repmat('%f ', 1, length(onset_CSm4567)), '];\n'], onset_CSm4567{:});
    durations_CSm4567 = num2cell(durations_CSm4567);
    fprintf(fp, [ ...
        'durations{6}    = [', repmat('%f ', 1, length(durations_CSm4567)), '];\n'], durations_CSm4567{:});
    
    fprintf(fp, '%s\n','names{7}   = [''CSm891011''];');
    onset_CSm891011 = num2cell(onset_CSm891011);
    fprintf(fp, [...
        'onsets{7}    = [', repmat('%f ', 1, length(onset_CSm891011)), '];\n'], onset_CSm891011{:});
    durations_CSm891011 = num2cell(durations_CSm891011);
    fprintf(fp, [ ...
        'durations{7}    = [', repmat('%f ', 1, length(durations_CSm891011)), '];\n'], durations_CSm891011{:});
    
    fprintf(fp, '%s\n','names{8}   = [''CSm12131415''];');
    onset_CSm12131415 = num2cell(onset_CSm12131415);
    fprintf(fp, [...
        'onsets{8}    = [', repmat('%f ', 1, length(onset_CSm12131415)), '];\n'], onset_CSm12131415{:});
    durations_CSm12131415 = num2cell(durations_CSm12131415);
    fprintf(fp, [ ...
        'durations{8}    = [', repmat('%f ', 1, length(durations_CSm12131415)), '];\n'], durations_CSm12131415{:});
    
    
    
    fprintf(fp, '%s\n','names{9}   = [''UCS''];'); 
    onset_UCS = num2cell(onset_UCS);
    fprintf(fp, [ ...
        'onsets{9}    = [', repmat('%f ', 1, length(onset_UCS)), '];\n'], onset_UCS{:});
    durations_UCS = num2cell(durations_UCS);
    fprintf(fp, [ ...
        'durations{9}    = [', repmat('%f ', 1, length(durations_UCS)), '];\n'], durations_UCS{:});
   
   
   
    fprintf(fp, '%s\n','rest_exists  = 1;');
    fprintf(fp, '%s\n','save taskdesign_6555.mat sess_name names onsets durations rest_exists');
    
% cd(basedir);
end