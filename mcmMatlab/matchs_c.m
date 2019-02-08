function [ stalo,advise] = matchs_c( b )
%input your data then output the slope of Start location
%and consequnce in the future,along with our advise
input = b;
a = b(:,1); 
advise(50,4)=0;
advise_suc=0;%succeed
advise_pre=0;%prevent
advise_ref=0;%reference
advise_pref=0;%prevent
catchc(1:4,1)=0;
sig = 0.05; % threshold value
stalo(1:2,1:5) = 100;% slope of Start location,initialize 100
confut(1:2,1:5) = 0;  %consequnce in the future
for i = 1:length(input)
    match = polyfit(1:8,b(i,2:9),2);
    x = 1:8;
    f = match(1)*x.^2 + match(2)*x+match(3);
    m = 2*match(1)*x + match(2);
    if b(i,2)>sig & b(i,9)<sig
        if abs(match(1)) > confut(1,1)
            confut(1,1) = match(1);
            confut(2,1) = b(i,1);
        end
        if abs(match(1)) < stalo(1,1)
            stalo(1,1) = match(1);
            stalo(2,1) = b(i,1);
        end
        advise_suc = advise_suc+1;
        advise(advise_suc,1)=b(i,1);
%         catchc(1,1) = catchc(1,1)+1;
%         figure(1);
%         subplot(4,6,catchc(1,1));
%         plot(x,f,x,m);grid;
%         xlabel("year");ylabel("percent");
%         text(8,-sig,num2str(a(i)));
    elseif b(i,2)>sig & b(i,9)>sig
        catchc(2,1) = catchc(2,1)+1;
        if match(1)>0
            if abs(match(1)) > confut(1,2)
                confut(1,2) = match(1);
                confut(2,2) = b(i,1);
            end
            if abs(match(1)) < stalo(1,2)
                stalo(1,2) = match(1);
                stalo(2,2) = b(i,1);
            end
            advise_pre=advise_pre+1;
            advise(advise_pre,2)=b(i,1);
%             figure(2);
%             subplot(4,20,catchc(2,1));
%             plot(x,f,x,m);grid;
%             xlabel("year");ylabel("percent");
%             text(8,-sig,num2str(a(i)));
        elseif match(1)<0
            if abs(match(1)) > confut(1,3)
                confut(1,3) = match(1);
                confut(2,3) = b(i,1);
            end
            if abs(match(1)) < stalo(1,3)
                stalo(1,3) = match(1);
                stalo(2,3) = b(i,1);
            end
            advise_ref=advise_ref+1;
            advise(advise_ref,3)=b(i,1);
%             figure(21);
%             subplot(4,20,catchc(2,1));
%             plot(x,f,x,m);grid;
%             xlabel("year");ylabel("percent");
%             text(8,-sig,num2str(a(i)));
        end
    elseif b(i,2)<sig & b(i,9)>sig
        if abs(match(1)) > confut(1,4)
            confut(1,4) = match(1);
            confut(2,4) = b(i,1);
        end
        if abs(match(1)) < stalo(1,4)
            stalo(1,4) = match(1);
            stalo(2,4) = b(i,1);
        end
        advise_pref = advise_pref+1;
        advise(advise_pref,4)=b(i,1);
        catchc(3,1) = catchc(3,1)+1;
%         figure(3);
%         subplot(3,3,catchc(3,1));
%         plot(x,f,x,m);grid;
%         xlabel("year");ylabel("percent");
%         text(8,-sig,num2str(a(i)));
    elseif b(i,2)<sig & b(i,9)<sig & b(i,5)>sig
        if abs(match(1)) < stalo(1,5)
            stalo(1,5) = match(1);
            stalo(2,5) = b(i,1);
        end
        catchc(4,1) = catchc(4,1)+1;
%         figure(4);
%         subplot(3,3,catchc(4,1));
%         plot(x,f,x,m);grid;
%         xlabel("year");ylabel("percent");
%         text(8,-sig,num2str(a(i)));
    end
end

end

