function toAppListBox(uiCtrlHd,expName)



if isempty(expName)
    uiCtrlHd.Items = {''};
    timedisp('注意：输入 List Box 的信息是空的！')
elseif iscell(expName)
    uiCtrlHd.Items = expName;
end

end