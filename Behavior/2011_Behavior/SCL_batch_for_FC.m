%%%%%%%%%%%%%%
%- SCL processing code for emotion processing experiment(Dr.Qin)
%- two type of blocks(emotion and cognition),always interleaved, 8 valid block in total (exclude last two block)
% (reference from "McMenamin, B. W., Langeslag, S. J., Sirbu, M., Padmala, S., & Pessoa, L. (2014). 
% Network Organization Unfolds over Time during Periods of Anxious Anticipation.  
% The Journal of Neuroscience, 34(34), 11261-11273.")
%-Created bt Yunzhe Liu in 20/09/2014
%%%%%%%%%%%%%%

%%%%%%%%%%%Transformation%%%%%%%%%%%%%%%%%%%%
clear
clc
cd 'E:\BNU\FC\2011_SCR\FC_SCRs_mats';
pwd=cd;
nsubject=['03';'04';'06';'07';'08';'09';'10';'11';'12';'13';'14';'15';'16';'17';'18';'19';'20';'21';'22';'23';'24';'25';'26';'27';'28';'29';'30';...
    '31';'32';'34';'35';'36';'38';'39';'40';'41';'42';'44';'45';'46';'47';'48';'49';'53';'54';'55';'56';'57';'58';'59';'60';...
    '61';'62';'63';'64';'65';'66';'67'];
%nsubject=['03';'04'];

for x=1:length(nsubject)
    temp=zeros(2400,30);
    cd 'E:\BNU\FC\2011_SCR\FC_SCRs_mats';
    ID=['s',nsubject(x,1),nsubject(x,2)];
    fprintf(['Reading ',ID,'...\n']);
    dataName=[ID,'-fc.mat'];
    load(dataName);
    %data(:,1)=log(data(:,1));
    a=str2num(nsubject(x,1));
    b=str2num(nsubject(x,2));
    sub=a*10+b;
    SCLtemp(x,1)=sub;
    data(:,1)=medfilt1(data(:,1),4);
    t=0;
    for i=1:length(data);%%%
            if data (i,2)==5;
                if data(i,2)~=data(i-1,2);
                    t=t+1;
                    j=1;
                    temp(j,t)=data(i,1);
                    
              
                
                else
                    j=j+1;
                    temp(j,t)=data(i,1);
                end
            else continue;
            end
        i=i+1;
    end
    
%     for l=1:30
%     m=find(temp(:,l));
%     k=max(m);
%        if k>=1000;
%          mean_scl=mean(temp(400:1000,l));
%          SCLtemp(x,l+1)=mean_scl;
%         else fprintf(['Reading ',ID,'...\n','num_low']);
%          mean_scl=mean(temp(1:k,l));
%          SCLtemp(x,l+1)=mean_scl;
%        end
%     end
  end
load('CS_order_1A.mat');
load('CS_order_1B.mat');
load('CS_order_2A.mat');
load('CS_order_2B.mat');
x=1;
for  x=1:length(nsubject) 
    sub=SCLtemp(x,1);
    SCL(x,1)=SCLtemp(x,1);
    sort_temp=zeros(30,2);
     if sub==1|| sub==2||sub==6||sub==10 ||sub==14 ||sub==18 || sub==22|| sub==26|| sub==30|| sub==34|| sub==39|| sub==44|| sub==48||sub==55||sub==60 ||sub==64;  %1A%
         sort_temp(:,1)=CS_order_1A(:,1);
         sort_temp(:,2)=SCLtemp(x,2:31);
         rightorderscl_temp=sortrows(sort_temp,1);
         SCL(x,2:31)=rightorderscl_temp(:,2);
     end
     if sub==3|| sub==7||sub==11||sub==15 ||sub==19 ||sub==23 || sub==27|| sub==31|| sub==35|| sub==40|| sub==45|| sub==49|| sub==56||sub==61||sub==65 ; %1B%
         sort_temp(:,1)=CS_order_1B(:,1);
         sort_temp(:,2)=SCLtemp(x,2:31);
         rightorderscl_temp=sortrows(sort_temp,1);
         SCL(x,2:31)=rightorderscl_temp(:,2);
     end
     
     if sub==4|| sub==8||sub==12||sub==16 ||sub==20||sub==24 || sub==28|| sub==32|| sub==36|| sub==41|| sub==46|| sub==53|| sub==57||sub==62||sub==66; %2A%
         sort_temp(:,1)=CS_order_2A(:,1);
         sort_temp(:,2)=SCLtemp(x,2:31);
         rightorderscl_temp=sortrows(sort_temp,1);
         SCL(x,2:31)=rightorderscl_temp(:,2);
     end
     
     if sub==5|| sub==9||sub==13||sub==17 ||sub==21 ||sub==25 || sub==29|| sub==38|| sub==42|| sub==47|| sub==54|| sub==58|| sub==59||sub==63||sub==67; %2B%
         sort_temp(:,1)=CS_order_2B(:,1);
         sort_temp(:,2)=SCLtemp(x,2:31);
         rightorderscl_temp=sortrows(sort_temp,1);
         SCL(x,2:31)=rightorderscl_temp(:,2);
     end
 
end

name={'sub','CSp_1','CSp_2','CSp_3','CSp_4','CSp_5','CSp_6','CSp_7','CSp_8','CSp_9','CSp_10','CSp_11','CSp_12','CSp_13','CSp_14','CSp_15','CSm_1','CSm_2','CSm_3','CSm_4','CSm_5','CSm_6','CSm_7','CSm_8','CSm_9','CSm_10','CSm_11','CSm_12','CSm_13','CSm_14','CSm_15'}
xlswrite('SCL_TBT_1.xls',name,'sheet1','A1:AE1')
xlswrite('SCL_TBT_1.xls',SCL,'sheet1','A2:AE62')





