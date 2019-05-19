% Created by LI Xu
% Version 1.0
% November 27, 2015

% Description:
% Insert Text on the plot figure

% If you have any question about this code,
% please do not hesitate to contact me via E-mail: 
% jeremy456@163.com

% Blog:
% http://blog.sciencenet.cn/u/lixujeremy
% http://lixuworld.blogspot.com/

% Example
% instr={str1, str2, str3};
% instratts.font='Arial';
% instratts.xsclae=0.2;
% instratts.yscale=0.3;
% instratts.fontsize=12;
% instratts.interval=0.1;
% PlotAddText(gca, instr, instratts);

function PlotAddText(handle, instr, instratts)
    % Get xlim ylim
    xlim=get(handle, 'xlim');
    ylim=get(handle, 'ylim');
    
    fontsize=instratts.fontsize;
    if fontsize<1
        fontsize=(ylim(2)-ylim(1))*fontsize;
    end
    
    % Loop
    for ii=1:length(instr)
        strVal=instr{ii};
        x=(xlim(2)-xlim(1))*instratts.xscale+xlim(1);
        y=(ylim(2)-ylim(1))*instratts.yscale+ylim(1);
        y=y-(ylim(2)-ylim(1))*instratts.interval*(ii-1);
        text(x, y, strVal, 'fontname', instratts.font, ...
            'fontsize', fontsize);
    end
end