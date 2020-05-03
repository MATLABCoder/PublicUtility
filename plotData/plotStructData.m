function plotStructData(axisHd,structureData,titleStr,xStr,yStr)
% 绘制输入的结构体的各个域的曲线到指定的坐标轴
% Legend使用各个域的名字
%
    curveNameList = fieldnames(structureData);
    axis(axisHd)
    for i = 1:length(curveNameList)
        thisData = structureData.(curveNameList{i});
        plot(thisData(:,1),thisData(:,2),'.-');
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

