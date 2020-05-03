function timedisp(str)
% 用全局变量或者预定m文件定义的变量
% 来全局控制是否需要显示命令窗口的提示文字
thisVar = 0;
if exist('Xiaolongxia','file')
    thisVar = run('Xiaolongxia.m');
elseif any(strcmp(who('global'),'Xiaolongxia'))
    global Xiaolongxia 
    thisVar = Xiaolongxia;
end   
if thisVar
        % 不显示
else
    try
        disp([datestr(now,'HH:MM:SS'),'  ',msg]);
    catch
        disp(str)
    end
end

end
% 20200502 Updated Amy
%