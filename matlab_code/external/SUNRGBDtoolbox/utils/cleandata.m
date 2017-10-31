addpath(genpath('.'));
% load('../Metadata/SUNRGBDMeta.mat');
pattern = '/n/fs/sun3d/data';
changed_pattern = '/data1'; 

% for i = 1: length(SUNRGBDMeta)
%     data = SUNRGBDMeta(i);
%     [~,pos] = regexp(data.depthpath, pattern);
%     SUNRGBDMeta(i).depthpath = [changed_pattern data.depthpath(pos+1:end)];
%     SUNRGBDMeta(i).rgbpath = [changed_pattern data.rgbpath(pos+1:end)];
% end
% save('../Metadata/SUNRGBDMeta.mat', 'SUNRGBDMeta');

load('../traintestSUNRGBD/allsplit.mat');
trainsequence = trainvalsplit.train;
valsequence = trainvalsplit.val;

for i = 1: length(trainsequence)
    data = trainsequence{i};
    [~,pos] = regexp(data, pattern);
    trainvalsplit.train{i} = [changed_pattern data(pos+1:end)];
end

for i = 1: length(valsequence)
    data = valsequence{i};
    [~,pos] = regexp(data, pattern);
    trainvalsplit.val{i} = [changed_pattern data(pos+1:end)];
end

for i = 1:length(alltest)
    data = alltest{i};
    [~,pos] = regexp(data, pattern);
    alltest{i} = [changed_pattern data(pos+1:end)];
end

for i = 1:length(alltrain)
    data = alltrain{i};
    [~,pos] = regexp(data, pattern);
    alltrain{i} = [changed_pattern data(pos+1:end)];
end

save('../traintestSUNRGBD/allsplit.mat', 'trainvalsplit', 'alltrain', 'alltest');
