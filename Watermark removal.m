file_path =  'D:\lmyst\Documents\Matlab\Project\test1\';
%需要读取的文件夹路径
img_path_list = dir(strcat(file_path,'*.png'));
img_num = length(img_path_list);
if img_num > 0
    for j = 1:img_num
        img =  imread(strcat(int2str(j),'.png'),'png');  
        filename = strcat('证券市场基本法律法规',num2str(j), '.png ' );
    img = im2bw(img, 220/255); %#ok<IM2BW>
        imwrite(img, strcat('D:\lmyst\Documents\Matlab\Project\证券\', filename));
        %D:\lmyst\Documents\Matlab\Project\证券\ 是处理好的图片放置的文件夹路径
        disp(strcat('去水印完成：第', num2str(j), '张'));
    end
end