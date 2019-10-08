

%%%%%%%%%%%%%%
%- SCR processing code for fear conditioning
%-Created bt WanjunLin in 16/08/2015
%%%%%%%%%%%%%%

clear;
clc;

% javaaddpath('/Applications/MATLAB_R2014b.app/toolbox/xlwrite/xlwrite/poi_library/xmlbeans-2.3.0.jar')
% javaaddpath('/Applications/MATLAB_R2014b.app/toolbox/xlwrite/xlwrite/poi_library/dom4j-1.6.1.jar')
% javaaddpath('/Applications/MATLAB_R2014b.app/toolbox/xlwrite/xlwrite/poi_library/poi-3.8-20120326.jar')
% javaaddpath('/Applications/MATLAB_R2014b.app/toolbox/xlwrite/xlwrite/poi_library/poi-ooxml-3.8-20120326.jar')
% javaaddpath('/Applications/MATLAB_R2014b.app/toolbox/xlwrite/xlwrite/poi_library/poi-ooxml-schemas-3.8-20120326.jar')
% javaaddpath('/Applications/MATLAB_R2014b.app/toolbox/xlwrite/xlwrite/poi_library/stax-api-1.0.1.jar')

nsubject=['03';'04';'06';'07';'08';'09';'10';'11';'12';'13';'14';'15';'16';'17';'18';'19';'20';'21';'22';'23';'24';'25';'26';'27';'28';'29';'30';...
    '31';'32';'34';'35';'36';'38';'39';'40';'41';'42';'44';'45';'46';'47';'48';'49';'53';'54';'55';'56';'57';'58';'59';'60';...
    '61';'62';'63';'64';'65';'66';'67'];
Batch=zeros(length(nsubject),38);
Batch(:,1)=str2num(nsubject);

for j=1:length(nsubject)
ID=[nsubject(j,1),nsubject(j,2)];
[scramplitude]=xlsread(ID,ID,'D7:D45');
[~,~,rawmarker]=xlsread(ID,ID,'H7:H45');
[rawtime]=xlsread(ID,ID,'A7:A45');
marker=(rawmarker(1:length(scramplitude),1));
[~, unmatchmarker,~]=xlsread(ID,ID,'B7:B45');
temp=(unmatchmarker(2:length(unmatchmarker),1));
marker=str2num(cell2mat(marker));
data(:,1)=scramplitude;
data(:,2)=marker;
if length(unmatchmarker)>1;
 temp=str2num(cell2mat(temp));
 marker((length(scramplitude)+1):(length(scramplitude)+5),1)=zeros(5,1);
 marker((length(scramplitude)+6):(length(scramplitude)+5+length(temp)),1)=temp;
end
time(:,1)=rawtime(:,1);
time(:,2)=marker;
data(:,3)=time(1:length(scramplitude),1);

nCSp=1;
nCSm=1;
for m=1:length(time)
    if time(m,2)==11;
    CSpInfo(nCSp,:)=time(m,:);
    nCSp=nCSp+1;
    else if time(m,2)==21;
             CSmInfo(nCSm,:)=time(m,:);
             nCSm=nCSm+1;
        end
    end
end

if nCSp<16;
    fprintf('CSp number error:');
    fprintf(ID);
end

if nCSm<16;
    fprintf('CSm number error:');
    fprintf(ID);
end

a=sort(CSpInfo);
b=sort(CSmInfo);

    for m=1:length(CSpInfo)
    for n=1:length(CSpInfo)
        if CSpInfo(m,1)==a(n,1)
            CSpInfo(m,3)=n;
        else continue;
        end 
    end 
    end
    
    
    for m=1:length(CSmInfo)
    for n=1:length(CSmInfo)
        if CSmInfo(m,1)==b(n,1)
            CSmInfo(m,3)=n;
        else continue;
        end
    end 
    end
    
   for m=1:length(scramplitude)
    for n=1:length(CSmInfo)
        if data(m,3)==CSmInfo(n,1)
            data(m,4)=CSmInfo(n,3);
        else continue;
        end
    end 
   end
    
    
    for m=1:length(scramplitude)
    for n=1:length(CSpInfo)
        if data(m,3)==CSpInfo(n,1)
            data(m,4)=CSpInfo(n,3);
        else continue;
        end
    end 
    end

   
if isempty (marker)==1
     Batch(j,2)=0;
     Batch(j,3)=0;
     Batch(j,4)=0;
     Batch(j,5)=0;
else
  
data(:,5)=sqrt(data(:,1));
data(:,6)=log10(data(:,1)+1);

    cspe=0;cspsqrte=0;csploge=0;
    cspl=0;cspsqrtl=0;csplogl=0;
    csme=0;csmsqrte=0;csmloge=0;
    csml=0;csmsqrtl=0;csmlogl=0;
    
    numpe=0;numpl=0;
    numme=0;numml=0;
   % in this version, matched 0 results are averaged as valid data
    for i=1:length(data)
        if data(i,2)==11
            if data(i,4)<8
                cspe=cspe+data(i,1); cspsqrte=cspsqrte+data(i,5); csploge=csploge+data(i,6);
                numpe=numpe+1;
            end
        end
        
        if data(i,2)==11
            if data(i,4)>=8 & data(i,4)<=15;
                cspl=cspl+data(i,1); cspsqrtl=cspsqrtl+data(i,5); csplogl=csplogl+data(i,6);
                numpl=numpl+1;
            end
        end
        
         if data(i,2)==21
            if data(i,4)<8
                csme=csme+data(i,1); csmsqrte=csmsqrte+data(i,5); csmloge=csmloge+data(i,6);
                numme=numme+1;
            end
        end
        
        if data(i,2)==21
            if data(i,4)>=8 & data(i,4)<=15;
                csml=csml+data(i,1); csmsqrtl=csmsqrtl+data(i,5); csmlogl=csmlogl+data(i,6);
                numml=numml+1;
            end
        end
    end
    
  % caculate SCR  
    if numpe>0
        SCRcspe=cspe/numpe; SCRcspsqrte=cspsqrte/numpe;SCRcsploge=csploge/numpe;
    else
        SCRcspe=0; SCRcspsqrte=0;SCRcsploge=0;
    end
    
     if numpl>0
        SCRcspl=cspl/numpl; SCRcspsqrtl=cspsqrtl/numpl;SCRcsplogl=csplogl/numpl;
    else
        SCRcspl=0; SCRcspsqrtl=0;SCRcsplogl=0;
     end
    
    
    if numme>0
        SCRcsme=csme/numme; SCRcsmsqrte=csmsqrte/numme;SCRcsmloge=csmloge/numme;
    else
        SCRcsme=0; SCRcsmsqrte=0;SCRcsmloge=0;
    end
    
     if numml>0
        SCRcsml=csml/numml; SCRcsmsqrtl=csmsqrtl/numml;SCRcsmlogl=csmlogl/numml;
    else
        SCRcsml=0; SCRcsmsqrtl=0;SCRcsmlogl=0;
    end
     
    SCMcspe=cspe/7; SCMcspsqrte=cspsqrte/7;SCMcsploge=csploge/7;
    SCMcspl=cspl/8; SCMcspsqrtl=cspsqrtl/8;SCMcsplogl=csplogl/8;
    SCMcsme=csme/7; SCMcsmsqrte=csmsqrte/7;SCMcsmloge=csmloge/7;
    SCMcsml=csml/8; SCMcsmsqrtl=csmsqrtl/8;SCMcsmlogl=csmlogl/8;
    
    Batch(j,2)=SCRcspe;
    Batch(j,3)=SCRcsme;
    Batch(j,4)=SCMcspe;
    Batch(j,5)=SCMcsme;
    Batch(j,6)=SCRcspe-SCRcsme;
    Batch(j,7)=SCMcspe-SCMcsme;
    
    Batch(j,8)=SCRcspl;
    Batch(j,9)=SCRcsml;
    Batch(j,10)=SCMcspl;
    Batch(j,11)=SCMcsml;
    Batch(j,12)=SCRcspl-SCRcsml;
    Batch(j,13)=SCMcspl-SCMcsml;
    
    Batch(j,14)=SCRcspsqrte;
    Batch(j,15)=SCRcsmsqrte;
    Batch(j,16)=SCMcspsqrte;
    Batch(j,17)=SCMcsmsqrte;
    Batch(j,18)=SCRcspsqrte-SCRcsmsqrte;
    Batch(j,19)=SCMcspsqrte-SCMcsmsqrte;
    
    Batch(j,20)=SCRcspsqrtl;
    Batch(j,21)=SCRcsmsqrtl;
    Batch(j,22)=SCMcspsqrtl;
    Batch(j,23)=SCMcsmsqrtl;
    Batch(j,24)=SCRcspsqrtl-SCRcsmsqrtl;
    Batch(j,25)=SCMcspsqrtl-SCMcsmsqrtl;
    
    Batch(j,26)=SCRcsploge;
    Batch(j,27)=SCRcsmloge;
    Batch(j,28)=SCMcsploge;
    Batch(j,29)=SCMcsmloge;
    Batch(j,30)=SCRcsploge-SCRcsmloge;
    Batch(j,31)=SCMcsploge-SCMcsmloge;
    
    Batch(j,32)=SCRcsplogl;
    Batch(j,33)=SCRcsmlogl;
    Batch(j,34)=SCMcsplogl;
    Batch(j,35)=SCMcsmlogl;
    Batch(j,36)=SCRcsplogl-SCRcsmlogl;
    Batch(j,37)=SCMcsplogl-SCMcsmlogl;
    
    
end

clearvars -EXCEPT Batch nsubject i j;
end

nsubject_High=[4,6,7,8,9,15,16,21,23,24,25,28,31,32,35,38,39,40,42,44,48,53,54,56,59,60,...
    66,67];
nsubject_Low=[1,2,3,5,10,12,13,14,17,19,20,22,26,27,29,34,36,41,46,47,55,58,61,62,63,64,...
    65];

for i=1:length(nsubject)
    for j=1:28;
        if Batch(i,1)==nsubject_High(j);
            Batch(i,38)=1; %1forhigh
        else
        end
    end
    
    for j=1:27;
        if Batch(i,1)==nsubject_Low(j);
            Batch(i,38)=2; %2forlow
        else
        end
    end
end

name={'sub',...
    'SCRcspe','SCRcsme','SCMcspe','SCMcsme','Dif_SCRe','Dif_SCMe',...
    'SCRcspl','SCRcsml','SCMcspl','SCMcsml','Dif_SCRl','Dif_SCMl',...
    'Sqrt_SCRcspe','Sqrt_SCRcsme','Sqrt_SCMcspe','Sqrt_SCMcsme','Sqrt_Dif_SCRe','Sqrt_Dif_SCMe',...
    'Sqrt_SCRcspl','Sqrt_SCRcsml','Sqrt_SCMcspl','Sqrt_SCMcsml','Sqrt_Dif_SCRl','Sqrt_Dif_SCMl',...
    'Log_SCRcspe','Log_SCRcsme','Log_SCMcspe','Log_SCMcsme','Log_Dif_SCRe','Log_Dif_SCMe',...
    'Log_SCRcspl','Log_SCRcsml','Log_SCMcspl','Log_SCMcsml','Log_Dif_SCRl','Log_Dif_SCMl',...
    'Group_1H2L',''};

xlwrite('EightSecondInterval_EarlyLate.xls',name,'sheet1','A1:AM1')
xlwrite('EightSecondInterval_EarlyLate.xls',Batch,'sheet1','A2:AL59') 
    