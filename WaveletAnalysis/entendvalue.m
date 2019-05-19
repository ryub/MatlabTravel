
% Created by LI Xu
% Version 1.0
% Feburary 27, 2016

% If you have any question about this code,
% please do not hesitate to contact me via E-mail: 
% jeremy456@163.com

% Blog:
% http://blog.sciencenet.cn/u/lixujeremy
% http://lixuworld.blogspot.com/

function range=entendvalue(ePrec, prec)

    range=[];
    org_length=length(prec);    
    for ii=1:length(ePrec)-length(prec)
        subdata=ePrec(ii:ii+org_length-1);
        
        if subdata==prec'
            range=ii:ii+org_length-1;
            break;
        end

    end
    
end

