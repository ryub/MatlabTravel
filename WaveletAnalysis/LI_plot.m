
% Created by LI Xu
% Version 1.0
% Feburary 27, 2016

% Description:
% Plot precipitation

% If you have any question about this code,
% please do not hesitate to contact me via E-mail: 
% jeremy456@163.com

% Blog:
% http://blog.sciencenet.cn/u/lixujeremy
% http://lixuworld.blogspot.com/

function LI_plot(years, prec)
    clf;
    handle=bar(years, prec);
    set(gca, 'xlim', [min(years)-1, max(years)+1]);
    set(gcf,'outerposition',get(0,'screensize'));
    set(gca, 'fontname', 'Arial', 'fontsize', 15);
    set(handle, 'facecolor', [0, 255, 255]./255);
    set(gcf, 'color', 'w');
    set(gca, 'ylim', [0, 10]);
    hold on;
    % Trend Line
    X=[ones(size(years)), years];
    [b, ~, ~, ~, stats]=regress(prec, X);
    
    b1=sprintf('%.3f', b(1));
    b2=sprintf('%.3f', b(2));
    str1=['{\ity}=', b2, '{\itx}+', b1];
    pval=stats(1);
    pval=sprintf('%.3f', pval);
    str2=['{\itr^2}=', pval];
    instr={str1, str2};
    instratts.font='Arial';
    instratts.xscale=0.1;
    instratts.yscale=0.85;
    instratts.fontsize=30;
    instratts.interval=0.1;
    PlotAddText(gca, instr, instratts);
    xlabel('{\itYear/a}', 'fontname', 'Times New Roman', 'fontsize', 20);
    ylabel('{\itAnnual Precipitation/mm}', 'fontname', 'Times New Roman', 'fontsize', 20);
    xlim=get(gca, 'xlim');
    yy=b(1)+b(2)*xlim;
    linehand=plot(xlim, yy, 'k-');
    set(linehand, 'linewidth', 2);
    hold off;
    
end

