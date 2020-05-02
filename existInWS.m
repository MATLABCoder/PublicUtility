function result = existInWS(varName)

result = evalin('base',['exist(''',varName,''',''var'')']);

end