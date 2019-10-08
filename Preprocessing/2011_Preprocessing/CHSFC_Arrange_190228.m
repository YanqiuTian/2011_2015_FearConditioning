% Adapted by Bingsen @2017-9-23  @2018-5-12  @2018-6-15
% for tar in *.tar.gz; do tar xvf $tar; done

% Written by Hao (17/07/12)
% QinLab, BNU
% haolpsy@gmail.com

clear
restoredefaultpath

%% ------------------------------------------------------------------ Setup
data_convert = 1;   % [1] -> Log YLM.txt & Check M.txt & Delete .nii -> [0]
data_arrange = 1;   % [1][1]
mri_exist    = 0;

scripts_dir = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/Preprocessing/CHSFC';
rawdata_dir = '/brain/iCAN/home/tianyanqiu/CHS/Data/Raw';
newdata_dir = '/brain/iCAN/home/tianyanqiu/Backup/CHS/Data';
database    = '/brain/iCAN/home/tianyanqiu/SPM12_scripts/Preprocessing/CHSFC/CHSFC_Image.xlsx';
[~,rawsub_id,~] = xlsread(database,1,'A:A');
[~,newsub_id,~] = xlsread(database,1,'B:B');

proj_name      = 'CHS';
fmri_name      = {'FC'   };   % RS(180RS-5-170), WM(194s-4-190)/(232s-4-228)
fmri_keyword   = {'337s009'};  %keywords of fmri in Temp
fmri_voldelete = {'4'    };
fmri_volremain = {'333'  };
mri_name       = {'anatomy'};
mri_keyword    = {'co*t1*'};   %keywords of mri in Temp dcm2nii(co*t1), dcm2niix(Crop) 

%% ----------------------------------------------------------- Data Convert
if data_convert == 1
    for i = 32%1:length(rawsub_id)
        rawsub_dir = fullfile(rawdata_dir,                             rawsub_id{i,1});
        tmpsub_dir = fullfile(rawdata_dir,'/Temp/',[newsub_id{i,1},'_',rawsub_id{i,1}]);
        if exist(tmpsub_dir,'dir') == 7   % 
            unix(['rm -r ',tmpsub_dir]);
        end
        mkdir(tmpsub_dir);
        unix(['dcm2nii -g n -o ',tmpsub_dir,' ',rawsub_dir]);   % 'dcm2niix -x y -z n -o '
    end
end

%% ----------------------------------------------------------- Data Arrange
if data_arrange == 1
    for i = 32%1:length(newsub_id)
        year_id    = ['20',newsub_id{i,1}(1:2)];
        tmpsub_dir = fullfile(rawdata_dir,'/Temp/',[newsub_id{i,1},'_',rawsub_id{i,1}]);
 
        % Arrange fmri
        for j = 1:length(fmri_name)
            tmpfmri_dirf = dir([tmpsub_dir,'/*',fmri_keyword{j,1},'*']); 
            fmri_dir     = fullfile(newdata_dir,year_id,newsub_id{i,1},'fmri',fmri_name{j,1},'unnormalized');
            if length(tmpfmri_dirf) == 1   % HLG
                if exist(fmri_dir,'dir') == 7   % 
                    unix(['rm -r ',fmri_dir]);
                end
                mkdir(fmri_dir);
                % Move fmri
                unix(['mv ',    tmpsub_dir,'/',tmpfmri_dirf(1,1).name,' ',fmri_dir,'/I.nii']);
                unix(['mv ',    fmri_dir,'/I.nii',' ',fmri_dir,'/I_all.nii']);
                unix(['fslroi ',fmri_dir,'/I_all.nii ',fmri_dir,'/I.nii ',fmri_voldelete{j,1},' ',fmri_volremain{j,1}]);
                unix(['gunzip ',fmri_dir,'/I.nii.gz']);
                unix(['echo ',newsub_id{i,1},' >> ',scripts_dir,'/',proj_name,'_Sublist_Y_',fmri_name{j,1},'.txt']);     
            elseif length(tmpfmri_dirf) < 1
                unix(['echo ',newsub_id{i,1},' >> ',scripts_dir,'/',proj_name,'_Sublist_L_',fmri_name{j,1},'.txt']);
            elseif length(tmpfmri_dirf) > 1
                unix(['echo ',newsub_id{i,1},' >> ',scripts_dir,'/',proj_name,'_Sublist_M_',fmri_name{j,1},'.txt']);
            end                                            
        end
                        
        % Arrange mri
        if mri_exist == 0
            for j = 1:length(mri_name)
                tmpmri_dirf = dir([tmpsub_dir,'/*',mri_keyword{j,1},'*']);
                mri_dir     = fullfile(newdata_dir,year_id,newsub_id{i,1},'mri',mri_name{j,1});
                if length(tmpmri_dirf) == 1
                    if exist(mri_dir,'dir') == 7   % 
                        unix(['rm -r ',mri_dir]);
                    end
                    mkdir(mri_dir);
                    % Move
                    unix(['mv ',tmpsub_dir,'/',tmpmri_dirf(1,1).name,' ',mri_dir,'/I.nii']);
                    unix(['echo ',newsub_id{i,1},' >> ',scripts_dir,'/',proj_name,'_Sublist_Y_T1.txt']);   % mri_name{j,1}
                elseif length(tmpmri_dirf) < 1
                    unix(['echo ',newsub_id{i,1},' >> ',scripts_dir,'/',proj_name,'_Sublist_L_T1.txt']);
                elseif length(tmpmri_dirf) > 1
                    unix(['echo ',newsub_id{i,1},' >> ',scripts_dir,'/',proj_name,'_Sublist_M_T1.txt']);
                end
            end
        end
    end
end

%% ------------------------------------------------------------------- Done
cd (scripts_dir)
disp ('All Done');