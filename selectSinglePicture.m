function  pictureFullNameWithPath = selectSinglePicture 
% 选择单张图片，因为图片类型不限制，靠用户选择正确的图片格式
%
% 返回空char:没有选择
% 返回 char数组 : 所选文件包含文件后缀名的完整路径

pictureFullNameWithPath = '';

[fileName,filepath] = uigetfile({'*.jpg';'*.jpeg';'*.*'},'选择图片');
if ischar(fileName)
    pictureFullNameWithPath = [filepath,fileName];
end
            
end

% 20200429 AmyYang