function userdisp(msg)
% 用全局变量*单独*控制是否需要显示用户提示文字

thisVar = 0;
if exist('Xiaolongxiauser','file')
    thisVar = run('Xiaolongxiauser.m');
elseif any(strcmp(who('global'),'Xiaolongxia'))
    global Xiaolongxiauser 
    thisVar = Xiaolongxiauser;
end   
if thisVar
        % 不显示
else
   timedisp(msg)
end


end
% 20200502 Updated Amy
%