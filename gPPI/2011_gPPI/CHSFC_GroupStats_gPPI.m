clear
restoredefaultpath;
clear classes
addpath(genpath('/brain/iCAN/home/tianyanqiu/SPM/spm12'));
% -----------------------------------------------------------------------
datadir1 = '/brain/iCAN/home/tianyanqiu/CHS/Result_IndividualStats/2011_new_onset';                 % 
datadir2 = '/fmri/stats_spm12/FC/stats_spm12_swcar_gPPI/PPI_CHS_UCS_aal_LAMG_-26_-4_-20';     % gPPI 
[~,subid,~] = xlsread('/brain/iCAN/home/tianyanqiu/SPM12_scripts/gPPI/CHSFC/CHSFC_Image_new.xlsx',4,'C:C');   % 
% [CAR,~,~]   = xlsread('/brain/iCAN/home/tianyanqiu/SPM12_scripts/gPPI/CHSFC/CHSFC_Image_new.xlsx',2,'D:D');
% for i = 1:54                    
%     yearfolder = ['20' subid{i}(1:2)];
%     c1{i,1} = fullfile(datadir1, yearfolder, subid{i}, datadir2, ['con_PPI_CSpE_CSmE_' subid{i} '.img,1']);   % high CSpE-CSmE
%     c2{i,1} = fullfile(datadir1, yearfolder, subid{i}, datadir2, ['con_PPI_CSpL_CSmL_' subid{i} '.img,1']);   % high CSpL-CSmL
% %    c3{i,1} = fullfile(datadir1, yearfolder, subid{i}, datadir2, ['con_PPI_2vs0_'  subid{i} '.img,1']);   % 2vs0
% end
for i = 1:27
    yearfolder = ['20' subid{i}(1:2)];
    g1c1{i,1} = fullfile(datadir1, yearfolder, subid{i}, datadir2, ['con_PPI_CSpE_CSmE_' subid{i} '.img,1']);   % high CSpE-CSmE
    g1c2{i,1} = fullfile(datadir1, yearfolder, subid{i}, datadir2, ['con_PPI_CSpL_CSmL_' subid{i} '.img,1']);   % high CSpL-CSmL
%    g1c3{i,1} = fullfile(datadir1, yearfolder, subid{i}, datadir2, ['con_PPI_2vs0_'  subid{i} '.img,1']);   % L 2vs0
end
for i = 1:27
    yearfolder = ['20' subid{i+27}(1:2)];
    g2c1{i,1} = fullfile(datadir1, yearfolder, subid{i+27}, datadir2, ['con_PPI_CSpE_CSmE_' subid{i+27} '.img,1']);   % low CSpE-CSmE
    g2c2{i,1} = fullfile(datadir1, yearfolder, subid{i+27}, datadir2, ['con_PPI_CSpL_CSmL_' subid{i+27} '.img,1']);   % low CSpL-CSmL
%    g2c3{i,1} = fullfile(datadir1, yearfolder, subid{i+27}, datadir2, ['con_PPI_2vs0_'  subid{i+27} '.img,1']);   % H 2vs0
end
% -----------------------------------------------------------------------
% Job saved on 30-Sep-2017 22:43:00 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
% cfg_basicio BasicIO - Unknown
% -----------------------------------------------------------------------CHSWM_GroupStats_gPPI_FF_02
spm_jobman('initcfg');
clear matlabbatch;
matlabbatch{1}.spm.stats.factorial_design.dir = {'/brain/iCAN/home/tianyanqiu/CHS/Result_GroupStats/CHSFC_GroupStats_gPPI_FF_groupxstage_UCS_LAMG'};
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(1).name = 'groups';
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(1).levels = 2;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(1).dept = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(1).variance = 1;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(1).gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(1).ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(2).name = 'stage';
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(2).levels = 2;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(2).dept = 1;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(2).variance = 1;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(2).gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fd.fact(2).ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(1).levels = [1;1];
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(1).scans  = g1c1;   % L 0
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(2).levels = [1;2];
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(2).scans  = g1c2;   % L 2
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(3).levels = [2;1];
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(3).scans  = g2c1;   % H 0
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(4).levels = [2;2];
matlabbatch{1}.spm.stats.factorial_design.des.fd.icell(4).scans  = g2c2;   % H 2
matlabbatch{1}.spm.stats.factorial_design.des.fd.contrasts = 1;
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File',...
		substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
spm_jobman('run',matlabbatch);
% -----------------------------------------------------------------------CHSWM_GroupStats_gPPI_TT_20
% spm_jobman('initcfg');
% clear matlabbatch;
% matlabbatch{1}.spm.stats.factorial_design.dir = {'/brain/iCAN/home/xiongbingsen/CHS/Result_GroupStats/CHSWM_GroupStats_gPPI_TT_20'};
% matlabbatch{1}.spm.stats.factorial_design.des.t2.scans1 = g1c3;   % L 20
% matlabbatch{1}.spm.stats.factorial_design.des.t2.scans2 = g2c3;   % H 20
% matlabbatch{1}.spm.stats.factorial_design.des.t2.dept = 0;
% matlabbatch{1}.spm.stats.factorial_design.des.t2.variance = 1;
% matlabbatch{1}.spm.stats.factorial_design.des.t2.gmsca = 0;
% matlabbatch{1}.spm.stats.factorial_design.des.t2.ancova = 0;
% matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
% matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
% matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
% matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
% matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
% matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
% matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
% matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
% matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File',...
% 		substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
% matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
% matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
% spm_jobman('run',matlabbatch);
% % -----------------------------------------------------------------------CHSWM_GroupStats_gPPI_MR_20
% spm_jobman('initcfg');
% clear matlabbatch;
% matlabbatch{1}.spm.stats.factorial_design.dir = {'/brain/iCAN/home/xiongbingsen/CHS/Result_GroupStats/CHSWM_GroupStats_gPPI_MR_20'};
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.scans  = c3;
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.mcov.c = CAR;
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.mcov.cname = 'CAR';
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.mcov.iCC = 1;
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.incint = 1;
% matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
% matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
% matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
% matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
% matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
% matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
% matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
% matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
% matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File',...
% 		substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
% matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
% matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
% spm_jobman('run',matlabbatch);
% % -----------------------------------------------------------------------CHSWM_GroupStats_gPPI_MR_2
% spm_jobman('initcfg');
% clear matlabbatch;
% matlabbatch{1}.spm.stats.factorial_design.dir = {'/brain/iCAN/home/xiongbingsen/CHS/Result_GroupStats/CHSWM_GroupStats_gPPI_MR_2'};
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.scans  = c2;
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.mcov.c = CAR;
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.mcov.cname = 'CAR';
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.mcov.iCC = 1;
% matlabbatch{1}.spm.stats.factorial_design.des.mreg.incint = 1;
% matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
% matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
% matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
% matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
% matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
% matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
% matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
% matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
% matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File',...
% 		substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
% matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
% matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
% spm_jobman('run',matlabbatch);
% -----------------------------------------------------------------------