file_path =  'D:\lmyst\Documents\Matlab\Project\test1\';
%��Ҫ��ȡ���ļ���·��
img_path_list = dir(strcat(file_path,'*.png'));
img_num = length(img_path_list);
if img_num > 0
    for j = 1:img_num
        img =  imread(strcat(int2str(j),'.png'),'png');  
        filename = strcat('֤ȯ�г��������ɷ���',num2str(j), '.png ' );
    img = im2bw(img, 220/255); %#ok<IM2BW>
        imwrite(img, strcat('D:\lmyst\Documents\Matlab\Project\֤ȯ\', filename));
        %D:\lmyst\Documents\Matlab\Project\֤ȯ\ �Ǵ���õ�ͼƬ���õ��ļ���·��
        disp(strcat('ȥˮӡ��ɣ���', num2str(j), '��'));
    end
end