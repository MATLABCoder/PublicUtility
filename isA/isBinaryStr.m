function result = isBinaryStr(str)
% 判断一个字符串是不是二进制字符串
% 是输出1；
% 否输出0；
%
% 末尾以b或者B结尾，其余字符都是01的都认为是二进制字符串
% 
% 测试：
% str1 = '010101b';isBinaryStr(str1)% 返回1
% str2 = '010101B';isBinaryStr(str2)% 返回1
% str3 = '010a101B';isBinaryStr(str3)% 返回0

if strcmp(str(end),'b') || strcmp(str(end),'B')
    result = 1;
    for i =1:length(str)-1
        check(i) = contains('01',str(i));
    end
    if any(~check)
        result = 0;
    end
else
    result = 0;
end

% Reviewd Amy