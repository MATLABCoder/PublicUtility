function plotTableData(axisHd,xData,tableData,titleStr,xStr,yStr)
% 绘制输入的 Table类型数据 tableData 的的每一列，横坐标数据为 xData
% * 到指定的坐标轴 axisHd
% * 指定标题titleStr ，x坐标轴xStr，y坐标轴yStr
% Legend 使用使用结构体的各个域的名字
%
% 调用数据：plotTableData_test.m
% 结果：plotTableData_result.jpg
% 
    curveNameList = tableData.Properties.VariableNames;
    if isempty(axisHd)
        figure;
        axisHd = gca;
    end
    axis(axisHd);
    for i = 1:length(curveNameList)
        thisCurve = curveNameList{i};
        thisData = tableData.(thisCurve);
        if isempty(xData)
            plot(thisData,'--');
        else
            plot(xData,thisData,'--');
        end
            hold on;
    end
    % 下划线会解释成下标，去掉
    legendstr = strrep(curveNameList,'_','-');
    
    legend(legendstr,'Location','EastOutside');
    hold off;
    
    title(titleStr);
    xlabel(xStr);
    ylabel(yStr);
end

% 20200508 reviwed Amy

