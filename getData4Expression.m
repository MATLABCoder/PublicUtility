function     data = getData4Expression(dataStr)

data = '';
try
        data = eval(dataStr);
    catch
        warndlg('请检查Edit输入的向量表达式！');
end
end