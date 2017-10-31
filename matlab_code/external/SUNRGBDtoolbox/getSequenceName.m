function sequenceName = getSequenceName(thispath,dataRoot)
    if ~exist('dataRoot','var'),
        dataRoot = '/data1/';
    end
    sequenceName  = thispath(length(dataRoot):end);
    while sequenceName(1)=='/',sequenceName =sequenceName(2:end);end
    while sequenceName(end)=='/',sequenceName =sequenceName(1:end-1);end 
end