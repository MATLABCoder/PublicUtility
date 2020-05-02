function  toDataBase(varName,varValue)

createVarHere(varName,varValue)

save(dataBaseName,varName,'-append');

end

function createVarHere(varName,varValue)

assignin('caller',varName,varValue);

end