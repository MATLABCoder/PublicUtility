function  pictureFullNameWithPath = selectSinglePicture 
% ѡ����ͼƬ����ΪͼƬ���Ͳ����ƣ����û�ѡ����ȷ��ͼƬ��ʽ
%
% ���ؿ�char:û��ѡ��
% ���� char���� : ��ѡ�ļ������ļ���׺��������·��

pictureFullNameWithPath = '';

[fileName,filepath] = uigetfile({'*.jpg';'*.jpeg';'*.*'},'ѡ��ͼƬ');
if ischar(fileName)
    pictureFullNameWithPath = [filepath,fileName];
end
            
end

% 20200429 AmyYang