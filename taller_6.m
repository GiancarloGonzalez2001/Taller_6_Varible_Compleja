clc
clear
tr = 1:1:255;
ti = 1:1:255;
matr=zeros(length(tr),length(ti));
iter = 1; 
tiledlayout(2,1) % Requires R2019b or later
for a = 1:length(tr)
    for b = 1:length(ti)
    z = a;
    matr(b,a)= z;
    end
    iter = iter+1;
end
nexttile
image(matr)  
colormap gray; 
title('Original')

vec1 = [];
vec2 = [];
color = [];
for m = length(tr):-1:1
    for n = length(ti):-1:1
    vec1 = [vec1, round(exp(m)*cos(n),8)];
    vec2 = [vec2, round(exp(m)*sin(n),8)];
    color = [color,matr(m,n)];
    end
end
nexttile
scatter(vec1,vec2,25,color,'filled')
title('Tranform')



% matr_T = zeros(length(tr),length(ti));
% 
% for x = 1:length(tr)
%     for y = 1:length(ti)
%         s = abs(exp(x)*cos(y))
%         p = abs(exp(x)*sin(y))
%         s = round(s);
%         p = round(p)
%         matr_T(s,p)=matr(x,y);
%         matr(x,y)
%     end
% end
% image(matr_T)