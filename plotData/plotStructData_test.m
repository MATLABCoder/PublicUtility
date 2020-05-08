%
%% 造测试数据 
clear
for i = 1:10
    t = (0:.1:1)';
    strData.(['sin',num2str(i)]) = [t,i*sin(t)];
end
%% 调用
figure
titleStr = '这是一系列 sin 曲线';
xStr = 'Time (t)';
yStr = 'Sin(t)';
plotStructData(gca,strData,titleStr,xStr,yStr)
