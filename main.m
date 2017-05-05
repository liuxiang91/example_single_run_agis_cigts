close all
clear all

loadModules();

ACRaw=readRawData('rawAGISCIGTS.xlsx');
[ACInterp,ACRaw]=interpolateData(ACRaw);
ACProg=labelProgression(ACInterp);

[ ACProgTrain,ACProgTest,ACRawTrain,ACRawTest ] = splitTrainTest( ACProg,ACRaw, 0.5 );

[ A0 C0 Q0 R0 INITX0 INITV0 ]=initializeEM(ACTrain);
[A, C, Q, R, INITX, INITV, LL] = learn_kalman(ACTrain(2:end,3), A0, C0, Q0, R0, INITX0, INITV0,100);

getRegModel( A, C, Q, R, INITX, INITV, ACTrain);
o=readRegCoeff();

[acc,dd]= paretoAnalysis( A,C,Q,R,INITX,INITV,o, ACTrain,ACTest,0.01,'AC Training','AC Testing');



