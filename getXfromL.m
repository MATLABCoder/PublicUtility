function out = getXfromL(data,plotType)

    out = data;
    if strcmp(plotType,'log')
        out = log(data);
    elseif strcmp(plotType,'dB')
        out = 20*log10(data);
    elseif strcmp(plotType,'-1')
        out = -data;
    end


end