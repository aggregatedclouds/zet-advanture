 run('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\matchs_c_dealwith.m') 
 %group by model first
 load('M_ann_2part_data.mat')
c = 0:6;  %10-16 years
i=1;      %county ,begin from 1
k=1;      %kind ,begin from 1
count1_s = 0;  %count H
count1_p = 0;  %count H
count1_r = 0;  %count H
count1_pr = 0; %count H
count2_s = 0; %count O
count2_p = 0; %count O
count2_r = 0; %count O
count2_pr = 0; %count O
match1(1:50,1:3)=0;
match2(1:50,1:3)=0;
mod = 2 ;  %mod 
for k=1:597
    for i=1:463
        MM = M(463*c+i,k);
        if isempty(find(j(1:2:10,1)==MM(1,1), 1))==0 % heroin 
            count1_s = count1_s+1;
            match1(count1_s,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(1);
            plot(c,match1(count1_s,1)*c.^2 + match1(count1_s,2)*c +match1(count1_s,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        elseif isempty(find(j(1:2:10,2)==MM(1,1), 1))==0 % heroin 
            count1_p = count1_p+1;
            match1(count1_p,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(2);
            plot(c,match1(count1_p,1)*c.^2 + match1(count1_p,2)*c +match1(count1_p,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        elseif isempty(find(j(1:2:10,3)==MM(1,1), 1))==0 % heroin 
            count1_r = count1_r+1;
            match1(count1_r,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(3);
            plot(c,match1(count1_r,1)*c.^2 + match1(count1_r,2)*c +match1(count1_r,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        elseif isempty(find(j(1:2:10,4)==MM(1,1), 1))==0 % heroin 
            count1_pr = count1_pr+1;
            match1(count1_pr,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(4);
            plot(c,match1(count1_pr,1)*c.^2 + match1(count1_pr,2)*c +match1(count1_pr,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
            
        elseif  isempty(find(j(2:2:10,1)==MM(1,1), 1))==0
            count2_s = count2_s+1;
            match2(count2_s,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(5);
            plot(c,match2(count2_s,1)*c.^2 + match2(count2_s,2)*c +match2(count2_s,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        elseif  isempty(find(j(2:2:10,2)==MM(1,1), 1))==0
            count2_p = count2_p+1;
            match2(count2_p,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(6);
            plot(c,match2(count2_p,1)*c.^2 + match2(count2_p,2)*c +match2(count2_p,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        elseif  isempty(find(j(2:2:10,3)==MM(1,1), 1))==0
            count2_r = count2_r+1;
            match2(count2_r,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(7);
            plot(c,match2(count2_r,1)*c.^2 + match2(count2_r,2)*c +match2(count2_r,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        elseif  isempty(find(j(2:2:10,4)==MM(1,1), 1))==0
            count2_pr = count2_pr+1;
            match2(count2_pr,:) = polyfit(1:7,M(463*c+i,k)',2);
            figure(8);
            plot(c,match2(count2_pr,1)*c.^2 + match2(count2_pr,2)*c +match2(count2_pr,3));hold on
            if rem(k,mod)==0
                text(6,0,num2str(k));
            end
            
        end
    end
end