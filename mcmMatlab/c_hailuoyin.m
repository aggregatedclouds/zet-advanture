function [all_stata,p] = c_hailuoyin(filename)
KY=xlsread(filename,'Sheet1');
n1 = min([KY(:,1);KY(:,5);KY(:,9);KY(:,13);KY(:,17);KY(:,21);KY(:,25);KY(:,29)]);
n2 = max([KY(:,1);KY(:,5);KY(:,9);KY(:,13);KY(:,17);KY(:,21);KY(:,25);KY(:,29)]);
all_stata = n1:n2;
all_stata = all_stata';
p = zeros(length(all_stata),8);
for i=1:31
    KY(find(isnan(KY(:,i))),i) = 0;
end
for i=1:8
a = KY(:,i*4-3);b = KY(:,i*4-2);c = KY(:,i*4-1);
d=b./c;
[s1,s2,s3] = intersect(all_stata,a);
for k = 1:length(s2)
    p(s2(k),i) = d(s3(k));
end
end
end

