function out = getLfromX(data,plotType)

    out = data;
    if strcmp(plotType,'log')
        out = exp(data);
    elseif strcmp(plotType,'dB')
        out = 10.^(data/20);
    elseif strcmp(plotType,'-1')
        out = -data;
    end


end