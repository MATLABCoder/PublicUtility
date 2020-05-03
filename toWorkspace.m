function toWorkspace(name,value,msg)


assignin('base',name,value);
if ~isempty(msg)
timedisp(msg);
end


end