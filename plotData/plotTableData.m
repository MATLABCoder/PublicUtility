function plotTableData(axisHd,xData,tableData,titleStr,xStr,yStr)
% 绘制输入的Table的各个列曲线到指定的坐标轴
% Legend使用各个列的名字
%
    curveNameList = tableData.Properties.VariableNames;
    axis(axisHd)
    for i = 1:length(curveNameList)
        thisCurve = curveNameList{i};
        thisData = tableData.(thisCurve);
        if isempty(xData)
            plot(thisData,'--');
        else
            plot(xData,thisData,'--');
        end
            hold on
    end
    % 下划线会解释成下标，去掉
    legendstr = strrep(curveNameList,'_','-');
    legend(legendstr,'Location','EastOutside');
    hold off
    
    title(titleStr);
    xlabel(xStr);
    ylabel(yStr);
end

% 20200502 Amy

