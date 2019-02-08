load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\WV\WV_O.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\WV\WV_H.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\VA\VA_O.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\VA\VA_H.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\PA\PA_O.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\PA\PA_H.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\OH\OH_O.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\OH\OH_H.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\KY\KY_O.mat')
load('D:\AAAAA总览之学习空间\数学建模\AA题目\2019 美赛准备材料\mcmMatlab\S_C\KY\KY_H.mat')
[j1,jVA_H] = matchs_c(VA_H);
[j2,jVA_O] = matchs_c(VA_O);
[j3,jPA_H] = matchs_c(PA_H);
[j4,jPA_O] = matchs_c(PA_O);
[j5,jOH_H] = matchs_c(OH_H);
[j6,jOH_O] = matchs_c(OH_O);
[j7,jWV_H] = matchs_c(WV_H);
[j8,jWV_O] = matchs_c(WV_O);
[j9,jKY_H] = matchs_c(KY_H);
[j10,jKY_O] = matchs_c(KY_O);
j=[j1(2,:);j2(2,:);j3(2,:);j4(2,:);j5(2,:);j6(2,:);j7(2,:);j8(2,:);j9(2,:);j10(2,:);];
clearvars -EXCEPT j;