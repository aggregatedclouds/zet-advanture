clc
clear
run('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\ACS_ann_csvread.m')
c=0:6;
%uniformization M
for k=2:597
    for i=1:463
        if M(i,k)==0
            M(:,k)=0;
        elseif M(i,k)~=0 
            M_temp = 0;
            for c=0:6
                M_temp = M_temp + M(463*c+i,k);
            end
            M(463*c+i,k)=M(463*c+i,k)*7/M_temp;
        end
    end
end
% for c=0:6
%     for k=2:597
%         for i=1:463
%             M_TEND = M(463*c+i,k);
%             MM(i*k,c+1)=M_TEND;
%             %conv
%             h = [1,1,1];
%             y = conv(h,MM);
%             subplot(2,2,1);
%             plot(1:length(h)+length(MM)-1,y);
%             y1 = fft(y);
%             subplot(2,2,2);
%             plot(1:length(h)+length(MM)-1,y1);
%             subplot(2,1,2);
%             [ym,xm]=centeredFFT(MM,10);
%             stem(xm,ym);
%             warning('off');
%         end
%     end
% end