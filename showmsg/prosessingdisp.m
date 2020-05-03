function prosessingdisp(msg)
% 用全局变量*单独*控制是否需要显示处理过程提示文字

thisVar = 0;
if exist('Xiaolongxiaprosessing','file')
    thisVar = run('Xiaolongxiaprosessing.m');
elseif any(strcmp(who('global'),'Xiaolongxiaprosessing'))
    global Xiaolongxiaprosessing 
    thisVar = Xiaolongxiaprosessing;
end   
if thisVar
        % 不显示
else
   timedisp(msg)
end


end

% 20200502 Updated Amy
%