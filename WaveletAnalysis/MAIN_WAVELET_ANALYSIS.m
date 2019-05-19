
% Created by LI Xu
% Version 1.0
% Feburary 27, 2016

% Description:
% Wavelet Analysis

% If you have any question about this code,
% please do not hesitate to contact me via E-mail: 
% jeremy456@163.com

% Blog:
% http://blog.sciencenet.cn/u/lixujeremy
% http://lixuworld.blogspot.com/

clear;
clc;

% Data
datapath='C:\Users\lmyst\Desktop\prec.mat';
load(datapath);
yearpath='C:\Users\lmyst\Desktop\years.mat';
load(yearpath);
% Plot prec
% LI_plot(years, prec);
% pause(2);
% export_fig('fig_1.png', '-png', '-painters', '-r300');
% close all;

% Check the part which were extended
ePrecpath='C:\Users\lmyst\Desktop\ePrec.mat';
load(ePrecpath);
range=entendvalue(ePrec, prec);
fprintf('Front extended %d, and tail extended %d\n', range(1)-1, length(ePrec)-range(end));

% Morlet
cePrecpath='C:\Users\lmyst\Desktop\cePrec.mat';
load(cePrecpath);
org_coef=coefs(:, range);
real_coef=real(org_coef);

clf;
text_label=-2.0:0.5:2.0;
text_x=1459:50:1911;
scales=1:256;
LI_contourf(years, real_coef, scales, text_label, text_x, 13);
set(gca, 'xticklabel', text_x);
xlabel('{\itYear/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
ylabel('{\itPeriod Scale/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
export_fig('fig_3.png', '-png', '-painters', '-r300');
close all;

% modulus
 mod_coef=abs(org_coef);
 text_label=0:0.25:2.0;
 text_x=1459:50:1911;
 scales=1:256;
 LI_contourf(years, mod_coef, scales, text_label, text_x, 13);
 set(gca, 'xticklabel', text_x);
 xlabel('{\itYear/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
 ylabel('{\itPeriod Scale/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
 export_fig('fig_5.png', '-png', '-painters', '-r300');
 close all;

% modulus squared
 mod_square=(abs(org_coef)).^2;
 text_label=0:1.5:10;
 text_x=1459:50:1911;
 scales=1:256;
 LI_contourf(years, mod_square, scales, text_label, text_x, 13);
 set(gca, 'xticklabel', text_x);
 xlabel('{\itYear/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
 ylabel('{\itPeriod Scale/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
 export_fig('fig_6.png', '-png', '-painters', '-r300');
% close all;


% Wavelet Variance
Wavlet_var=sum(abs(org_coef).^2, 2)./size(org_coef, 2);
LI_Var(scales, Wavlet_var);
xlabel('{\itPeriod Scale/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
ylabel('{\itWavelet Variance/dimensionless}', 'fontname', 'Times New Roman', 'fontsize', 20);
export_fig('fig_7.png', '-png', '-painters', '-r300');
close all;

% 11a Cycle
 a11_coef=real_coef(11, :);
 LI_period_plot(years, a11_coef);
 xlabel('{\itYear/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
 ylabel('{\itWavelet Coefficient/dimensionless}', 'fontname', 'Times New Roman', 'fontsize', 20);
 legend('11a-Period Scale', 'location', 'north');
 export_fig('fig_8.png', '-png', '-painters', '-r300');
 close all;

% 55a Cycle
 a55_coef=real_coef(55, :);
 LI_period_plot(years, a55_coef);
 xlabel('{\itYear/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
 ylabel('{\itWavelet Coefficient/dimensionless}', 'fontname', 'Times New Roman', 'fontsize', 20);
 legend('55a-Period Scale', 'location', 'north');
 export_fig('fig_9.png', '-png', '-painters', '-r300');
 close all;

disp('*********************************************');
