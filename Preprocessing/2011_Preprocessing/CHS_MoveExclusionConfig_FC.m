paralist.ServerPath        = '/brain/iCAN/home/tianyanqiu/Backup/CHS/Data';
paralist.PreprocessedFolder = 'smoothed_spm12';
[~,newsub_id,~]            = xlsread( '/brain/iCAN/home/tianyanqiu/SPM12_scripts/Preprocessing/CHSFC/CHSFC_Image.xlsx',1,'B:B');
paralist.SubjectList        = newsub_id;
paralist.SessionList       = {'FC'};
paralist.ScanToScanCrit     = 0.5;
