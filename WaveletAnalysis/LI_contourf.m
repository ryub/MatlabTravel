


% Created by LI Xu
% 15 May, 2014
% Version 1.0

% Drawing the Contour May


function LI_contourf(year, data, scales, text_label, text_x, label_size)

%----------------------------------
% load Year
% year=Year;
% data=realpart;
% % Text Label
% text_label=-500:100:600;  %http://www.ilovematlab.cn/thread-14508-1-1.html
% text_x=1904:10:2004;


% Grid
x=year-min(year)+1;
y=scales;
[X, Y]=meshgrid(x, y);



[C, h]=contourf(X, Y, data, text_label, 'color', 'k');
% text_handle=clabel(C, h, 'labelSpacing', 4*72 ...
%     ,'Rotation',0, 'FontName', 'Times New Roman');
%text_handle=clabel(C, h, 'FontName', 'Times New Roman', ...
   % 'Color', 'w', 'FontSize', label_size);
%set(text_handle, 'BackgroundColor', 'none');
set(gca, 'FontName', 'Arial', 'FontSize', 13);
% set(gca, 'xtick', 3:10:53);
% set(gca, 'xtick', );
set(gca, 'xgrid', 'on', 'GridColor', 'k');
grid on;
set(gca, 'linewidth', 2.5);
colorbar;
set(colorbar, 'FontName', 'Arial', 'FontSize', 13)

colormap(jet);
end












