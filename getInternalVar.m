function varValue = getInternalVar(varName)

varValue = evalin('base',['appInternal_',varName]);
end