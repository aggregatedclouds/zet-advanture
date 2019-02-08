 clear
clc
close all
M(1:460,1:2) = 0; %allocate memory
MD(1:3241,1:16)=0;   %allocate memory
load('M_ann_2part_data_groupby_area.mat')
load('M_ann_2part_data.mat')
c = 0:6;  %10-16 years
ga = groupby_area;
M_bat = M;
match1(1:50,1:5)=0;
match2(1:50,1:5)=0;
match3(1:50,1:5)=0;
match4(1:50,1:5)=0;
count1_1 = 0;  %count H
count1_2 = 0;  %count H
count1_3 = 0;  %count H
count1_4 = 0;  %count H
mod = 2 ;  %mod 
% count(M_bat = 16)
MD(:,1) = M(:,1);MD(:,2) = M(:,2);MD(:,3) = M(:,66);
MD(:,4) = M(:,94)+M(:,118);MD(:,5) = M(:,144);MD(:,6) = M(:,170);
MD(:,7) = M(:,206);MD(:,8) = M(:,230);MD(:,9) = M(:,270);
MD(:,10) = M(:,310);MD(:,11) = M(:,342);
MD(:,12) = M(:,366) + M(:,374)+M(:,378);
MD(:,13) = M(:,366) + M(:,382)+M(:,386);
MD(:,14) = M(:,366);MD(:,15) = M(:,430);MD(:,16) = M(:,486);
% deal with
%uniformization M
for k=2:16
    for i=1:463
        MDT = (MD(i,k)+MD(463+i,k)+MD(463*2+i,k)+MD(463*3+i,k)+MD(463*4+i,k)+MD(463*5+i,k)+MD(463*6+i,k))/7;
        MD(463*c+i,k)=MD(463*c+i,k)/MDT;
    end
end
for k=2:16
    for i=1:460
        if ga(i,2)==1
            count1_1 = count1_1+1;
            match1(count1_1,1:3) = polyfit(1:7,MD(460*c+i,k)',2);
            match1(count1_1,4) = ga(i,1);
            match1(count1_1,5) = ga(i,2);
            figure(1);
            plot(c,2*match1(count1_1,1)*c + match1(count1_1,2));hold on
         elseif ga(i,2)==2 
            count1_2 = count1_2+1;
            match2(count1_2,1:3) = polyfit(1:7,MD(460*c+i,k)',2);
            match2(count1_2,4) = ga(i,1);
            match2(count1_2,5) = ga(i,2);
            figure(2);
            plot(c,2*match2(count1_2,1)*c + match2(count1_2,2));hold on
        elseif ga(i,2)==3 
            count1_3 = count1_3+1;
            match3(count1_3,1:3) = polyfit(1:7,MD(460*c+i,k)',2);
            match3(count1_3,4) = ga(i,1);
            match3(count1_3,5) = ga(i,2);
            figure(3);
            plot(c,2*match3(count1_3,1)*c + match3(count1_3,2));hold on
        elseif ga(i,2)==4 
            count1_4 = count1_4+1;
            match4(count1_4,1:3) = polyfit(1:7,MD(460*c+i,k)',2);
            match4(count1_4,4) = ga(i,1);
            match4(count1_4,5) = ga(i,2);
            figure(4);
            plot(c,2*match4(count1_4,1)*c + match4(count1_4,2));hold on
        end
    end
end