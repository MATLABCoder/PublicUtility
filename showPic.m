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
    % ��������off����֤figureͼƬ��ȫ��������Ҫͨ��fidobj����ȡFigure���
    % figHd.HandleVisibility = 'off';
end   
end
% Reviewd AmyYang
% 20200429