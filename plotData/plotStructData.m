function plotStructData(axisHd,structureData,titleStr,xStr,yStr)
% 绘制输入的结构体 structureData 的各个域的曲线
% * 到指定的坐标轴 axisHd
% * 指定标题titleStr ，x坐标轴xStr，y坐标轴yStr
% Legend 使用使用结构体的各个域的名字
%
% 调用数据：plotStructData_test.m
% 结果：plotStructData_result.jpg
% 
    curveNameList = fieldnames(structureData);
    axis(axisHd);
    for i = 1:length(curveNameList)
        thisData = structureData.(curveNameList{i});
        plot(thisData(:,1),thisData(:,2),'.-');
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

% 20200508 reviewd Amy
% 初版

