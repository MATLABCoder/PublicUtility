%
%% 造测试数据 
clear
tableDemo = table;
for i = 1:10
    t = (0:.1:1)';
    tableDemo.(['sin',num2str(i)]) = i*sin(t);
end
%% 调用
figure
titleStr = '这是一系列 sin 曲线';
xStr = 'Time (t)';
yStr = 'Sin(t)';
plotTableData(gca,t,tableDemo,titleStr,xStr,yStr)
