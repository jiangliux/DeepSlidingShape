function opt = dss_initPath()
            addpath('./utils');
            addpath('./sizedistrubution/');
            addpath(genpath('./external/'))
            addpath('./compute_feature/')
            addpath('./marvin_helper/')
            addpath('./vis/')
            addpath('./slidingAnchor/');
            addpath('./eval/'); 
            
            opt.SUNrgbd_toolbox     = './external/SUNRGBDtoolbox/';
            opt.cudnn_libpath       = '/usr/local/cuda/lib64';
            
            %% locations to save: data,feature, trained model and snapshot, training log
            localdata_root          = '/home/jiang/deepDetectLocal/';
            opt.trainedcn_dir       = fullfile(localdata_root,'trainedcnn/');
            opt.log_dir             = fullfile(localdata_root,'marvinlog/');   
            
       
            rootpath = '/data1/deepDetect/Release/';
            opt.feature_mat_dir            = fullfile(rootpath,'../featuremat/');
            opt.proposal_root              = fullfile(rootpath,'result/proposal/');
            opt.marvin_dir                 = fullfile(rootpath,'code/marvin/');
            opt.path2trained_color_model   = fullfile(rootpath,'pretrainedModels/color_vgg/vgg_hha_half.marvin');
            opt.extract_imgfeafile_po      = fullfile(rootpath,'pretrainedModels/color_vgg/vgg_hha_extract_po.json');
            opt.data_root                  = fullfile(rootpath,'sunrgbd_dss_data/');
            opt.imgfea_dir                 = fullfile(rootpath,'image_fea/'); 
            opt.feature_tensor_dir         = fullfile(rootpath,'feature/');
            %opt.sysn_dataroot       = '/home/shurans/deepDetectLocal/results_nyu/';
            opt.RPNdata_dir     = fullfile(rootpath,'../RPNdata_mulit/');
            opt.RPNdatamat_dir  = fullfile(rootpath,'../RPNdata_mulitmat/');
            opt.seg_dir         = fullfile(rootpath,'../seg/');
            opt.basepath        = pwd;
            
            
end