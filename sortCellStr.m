function sortedID = sortCellStr(IDStrin)
% 把一系列{'ID1','ID4','ID9'}的字符cell数组按照ID后面的数字排序。
% 
pre = 'ID';
numberStr = replace(IDStrin,'ID','');
IDlist = cellfun(@str2num,numberStr);
[~,index] = sort(IDlist);
sortedID = IDStrin(index);

end
% 20200508 Reviewd Amy