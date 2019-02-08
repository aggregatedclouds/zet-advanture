clear
clc
close all
M(1:460,1:2) = 0; %allocate memory
load('M_ann_2part_data_groupby_area.mat')
load('M_ann_2part_data.mat')
c = 0:6;  %10-16 years
i=1;      %county ,begin from 1
k=1;      %kind ,begin from 1
ga = groupby_area;
M_bat = M;
count1_1 = 0;  %count H
count1_2 = 0;  %count H
count1_3 = 0;  %count H
count1_4 = 0;  %count H
match1(1:50,1:5)=0;
mod = 2 ;  %mod 
%uniformization M
for k=2:597
    for i=1:463
        if M(i,k)==0
            M(:,k)=0;
        elseif M(i,k)~=0 
            M(463*c+i,k)=M(463*c+i,k)/M(i,k);
        end
    end
end
for k=1:597
    for i=1:460
        MM = M(460*c+i,k); % change of every year
        if ga(i,2) ==1    %first cluster
            count1_1 = count1_1+1;
            match1(count1_1,1:3) = polyfit(1:7,M(460*c+i,k)',2);
            match1(count1_1,4) = ga(i,1);
            match1(count1_1,5) = ga(i,2);
%             figure(1);
%             plot(c,2*match1(count1_1,1)*c + match1(count1_1,2));hold on
%             if rem(k,mod)==0
%                 text(6,0,num2str(k));
%             end
        elseif ga(i,2)==2 
            count1_2 = count1_2+1;
            match1(count1_2,1:3) = polyfit(1:7,M(460*c+i,k)',2);
            match1(count1_2,4) = ga(i,1);
            match1(count1_2,5) = ga(i,2);
%             figure(2);
%             plot(c,2*match1(count1_2,1)*c + match1(count1_2,2));hold on
%             xlabel('year');ylabel('percent');title('cluster 1');
%             if rem(k,mod)==0
%                 text(6,0,num2str(k));
%             end
        elseif ga(i,2)==3 
            count1_3 = count1_3+1;
            match1(count1_3,1:3) = polyfit(1:7,M(460*c+i,k)',2);
            match1(count1_3,4) = ga(i,1);
            match1(count1_3,5) = ga(i,2);
%             figure(3);
%             plot(c,2*match1(count1_3,1)*c + match1(count1_3,2));hold on
%             xlabel('year');ylabel('percent');title('cluster 1');
%             if rem(k,mod)==0
%                 text(6,0,num2str(k));
%             end
        elseif ga(i,2)==4 
            count1_4 = count1_4+1;
            match1(count1_4,1:3) = polyfit(1:7,M(460*c+i,k)',2);
            match1(count1_4,4) = ga(i,1);
            match1(count1_4,5) = ga(i,2);
%             figure(4);
%             plot(c,2*match1(count1_4,1)*c + match1(count1_4,2));hold on
%             xlabel('year');ylabel('percent');title('cluster 1');
%             if rem(k,mod)==0
%                 text(6,0,num2str(k));
%             end
        end
    end
end