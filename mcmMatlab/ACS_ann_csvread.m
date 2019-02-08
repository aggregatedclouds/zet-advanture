clc
clear
fileheadname = 'D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\2019_MCM-ICM_Problems\2019_MCMProblemC_DATA\';
f0 = 'ACS_10_5YR_DP02\ACS_10_5YR_DP02_with_ann.csv';filename1 = strcat(fileheadname,f0);
f1 = 'ACS_11_5YR_DP02\ACS_11_5YR_DP02_with_ann.csv';filename2 = strcat(fileheadname,f1);
f2 = 'ACS_12_5YR_DP02\ACS_12_5YR_DP02_with_ann.csv';filename3 = strcat(fileheadname,f2);
f3 = 'ACS_13_5YR_DP02\ACS_13_5YR_DP02_with_ann.csv';filename4 = strcat(fileheadname,f3);
f4 = 'ACS_14_5YR_DP02\ACS_14_5YR_DP02_with_ann.csv';filename5 = strcat(fileheadname,f4);
f5 = 'ACS_15_5YR_DP02\ACS_15_5YR_DP02_with_ann.csv';filename6 = strcat(fileheadname,f5);
f6 = 'ACS_16_5YR_DP02\ACS_16_5YR_DP02_with_ann.csv';filename7 = strcat(fileheadname,f6);
M10 = csvread(filename1);
M11 = csvread(filename2);
M12 = csvread(filename3);
M13 = csvread(filename4);
M14 = csvread(filename5);
M15 = csvread(filename6);
M16 = csvread(filename7);
%deal with
M10(372:463,:)=M10(373:464,:);M10=M10(1:463,:);
M11(372:463,:)=M11(373:464,:);M11=M11(1:463,:);
M12(372:463,:)=M12(373:464,:);M12=M12(1:463,:);
M13(372:463,:)=M13(373:464,:);M13=M13(1:463,1:597);
M14=M14(:,1:597);
M15=M15(:,1:597);
M16=M16(:,1:597);
%all
M = [M10;M11;M12;M13;M14;M15;M16];
clearvars -EXCEPT M