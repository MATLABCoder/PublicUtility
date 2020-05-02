function exportDataBase(varName)

[fileName,filepath,indx] = uiputfile('myCurve.mat');
if ischar(fileName)
    fullNameWithPath = fullfile(filepath,fileName);
end
load(dataBaseName);
save(fullNameWithPath,varName{1});
for i = 2:length(varName)
    thisName = varName{i};
    save(fullNameWithPath,thisName,'-append');
end