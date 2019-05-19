


% Created by LI Xu
% 15 May, 2014
% Version 1.0

% Plot Specific Coefficient for Some-year period

function LI_period_plot(x, y)

%------------------------------------------------------


plot(x, y, 'color', 'k', 'linewidth', 2);

% Line
hold on;
st=[min(x), max(x)];
ed=[0, 0];
line(st, ed, 'color', 'k');


set(gca, 'xlim', [min(x)-1, max(x)+1]);
set(gca, 'xgrid', 'on');
set(gca, 'xgrid', 'on');
set(gca, 'FontName', 'Arial', 'FontSize', 13);


set(gcf, 'color', 'w');











