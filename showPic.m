function showPic(fileName)


if ~isempty(fileName)
    originalPic = imread(fileName);
    figHd = getFigHd;
    if isempty(figHd)
        figHd = figure('Name',originalFigName);
    else
        figure(figHd);
    end
    imshow(originalPic);
   
    axisHd = setAxisRange(figHd);
    saveInternalVar('axisHd',axisHd);
    % 不能设置off来保证figure图片安全，后续需要通过fidobj来获取Figure句柄
    % figHd.HandleVisibility = 'off';
end   
end
% Reviewd AmyYang
% 20200429