file_path =  'D:\lmyst\Documents\Matlab\workspace\图片\';
%需要读取的文件夹路径
img_path_list = dir(strcat(file_path,'*.png'));
img_num = length(img_path_list);
if img_num > 0
    for i = 1:img_num
        filename = strcat('640_480_',num2str(i), '.png ' );
        img = imread([file_path img_path_list(i).name]);
        img = im2bw(img,210/255); %#ok<IM2BW>
        imwrite(img, strcat('D:\lmyst\Documents\Matlab\workspace\图片完成\', filename));
        disp(strcat('去水印完成', num2str(i), '张'));

    end
end
