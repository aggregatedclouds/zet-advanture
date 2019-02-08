function [all_stata,o,e] = c_problem(filename)
state=xlsread(filename,'Sheet1');
n1 = min([state(:,1);state(:,5);state(:,9);state(:,13);state(:,17);state(:,21);state(:,25);state(:,29)]);
n2 = max([state(:,1);state(:,5);state(:,9);state(:,13);state(:,17);state(:,21);state(:,25);state(:,29)]);
all_stata = n1:n2;
all_stata = all_stata';
e = zeros(length(all_stata),8);
o = zeros(length(all_stata),8);
for i=1:8
a = state(:,i*4-3);b = state(:,i*4-2);c = state(:,i*4-1);
a(isnan(a))=[];b(isnan(b))=[];c(isnan(c))=[];
d = unique(a);
f = zeros(length(d),1);
ss = zeros(length(d),1);
for j=1:length(d)
    num = find(a == d(j));
    f(j,1)=sum(b(num));
end
[s1,s2,s3] = intersect(all_stata,d);
for k = 1:length(s2)
    e(s2(k),i) = f(s3(k));
end
for l=1:length(d)
    ss(l)=c(find(a == d(l),1));
end
for w = 1:length(s2)
    o(s2(w),i) = ss(s3(w));
end
end
end


