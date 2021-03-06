% Ploting Throughput Results 
%%%%%%%% names of the files that will be imported 
Throughput25 = csvread ('THROUGHPUT_VS_BAND_FOR_ALLSUs_PPU(.25).csv'); 
Throughput15 = csvread ('THROUGHPUT_VS_BAND_FOR_ALLSUs_PPU(.15).csv'); 
Throughput00 = csvread ('THROUGHPUT_VS_BAND_FOR_ALLSUs_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x1= Throughput00 (:,1) ;% this is the results from probabilty of 0.0 
y1= Throughput15 (:,1) ;% this is the results from probabilty of 0.15
z1= Throughput25 (:,1) ;% this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process 
figure(1)
hold on;
plot(x1,'Color','blue','LineWidth',2.0);
plot(y1,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z1,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Bands','Fontweight','Bold');
ylabel('Throughput','Fontweight','Bold');
title ('Throughput VS BAND FOR ALL SUs','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
axis([0 100 0 1]) ; 
grid on;
hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ploting Utilization Results 
%%%%%%%% names of the files that will be imported 
Utilization25 = csvread ('Utilization_VS_BAND_FOR_ALLSUs_PPU(.25).csv'); 
Utilization15 = csvread ('Utilization_VS_BAND_FOR_ALLSUs_PPU(.15).csv'); 
Utilization00 = csvread ('Utilization_VS_BAND_FOR_ALLSUs_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x2= Utilization00 (:,1); % this is the results from probabilty of 0.0 
y2= Utilization15 (:,1) ;% this is the results from probabilty of 0.15
z2= Utilization25 (:,1) ;% this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process 
figure(2)
hold on;
plot(x2,'Color','blue','LineWidth',2.0);
plot(y2,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z2,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Bands','Fontweight','Bold');
ylabel('Utilization','Fontweight','Bold');
title ('Utilization VS BAND FOR ALL SUs','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;
hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ploting SU Collisions Results 
%%%%%%%% names of the files that will be imported 
Collision25 = csvread ('Collision_VS_SUID_FOR_ALLBANDs_PPU(.25).csv'); 
Collision15 = csvread ('Collision_VS_SUID_FOR_ALLBANDs_PPU(.15).csv'); 
Collision00 = csvread ('Collision_VS_SUID_FOR_ALLBANDs_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x4= Collision00 (:,1) ;% this is the results from probabilty of 0.0 
y4= Collision15 (:,1) ;% this is the results from probabilty of 0.15
z4= Collision25 (:,1); % this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process 
figure(4)
hold on;
plot(x4,'Color','blue','LineWidth',2.0);
plot(y4,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z4,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Bands','Fontweight','Bold');
ylabel('Collision','Fontweight','Bold');
title ('Collision VS Time Slot FOR ALL SUs','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;
hold off;

% Ploting False alaram for all SUs  VS Time  Results 
%%%%%%%% names of the files that will be imported 

SUFA25 = csvread ('PFA_VS_SUID_FOR_ALLBANDs_PPU(.25).csv'); 
SUFA15 = csvread ('PFA_VS_SUID_FOR_ALLBANDs_PPU(.15).csv'); 
SUFA00 = csvread ('PFA_VS_SUID_FOR_ALLBANDs_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x7= SUFA00 (:,1); % this is the results from probabilty of 0.0 
y7= SUFA15 (:,1); % this is the results from probabilty of 0.15
z7= SUFA25 (:,1); % this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process 
figure(7)
hold on;
plot(x7,'Color','blue','LineWidth',2.0);
plot(y7,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z7,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Time SLOT','Fontweight','Bold');
ylabel('SU False Alarms Avereged Over Time Slots','Fontweight','Bold');
title ('SU False Alarms Avereged Over Time Slots For Each SU','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Ploting Miss-Detecction for all SUs  VS Time  Results 
%%%%%%%% names of the files that will be imported 

SUMD25 = csvread ('PMD_VS_SUID_FOR_ALLBANDs_PPU(.25).csv'); 
SUMD15 = csvread ('PMD_VS_SUID_FOR_ALLBANDs_PPU(.15).csv'); 
SUMD00 = csvread ('PMD_VS_SUID_FOR_ALLBANDs_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x8= SUMD00 (:,1); % this is the results from probabilty of 0.0 
y8= SUMD15 (:,1) ;% this is the results from probabilty of 0.15
z8= SUMD25 (:,1) ;% this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process
figure (8)
hold on;
plot(x8,'Color','blue','LineWidth',2.0);
plot(y8,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z8,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Time slot','Fontweight','Bold');
ylabel('SU Miss detection Avereged Over Time Slots','Fontweight','Bold');
title ('SU Miss Detection Avereged Over Time Slots For Each SU','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ploting Sucessful SU4  VS Time  Results 
%%%%%%%% names of the files that will be imported 

SucessfulTransmission00 = csvread ('Successful_VS_Time_FOR_SU(4)_Deterministic.csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x3= SucessfulTransmission00 (:,1) ;% this is the results from probabilty of 0.0 
%%%%%%%%%% the Drawing process
figure(3)
plot(x3);
xlabel('Bands','Fontweight','Bold');
ylabel('SucessfulTransmission','Fontweight','Bold');
title ('SucessfulTransmission VS BAND FOR SU(4)','Fontweight','Bold');
legend ('SU ID 4');
grid on;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ploting SU sucessful transmission  Results 
%%%%%%%% names of the files that will be imported 

SucessfulTransmission25 = csvread ('SuccessfulTransmission_VS_BAND_FOR_ALLSUs_PPU(.25).csv'); 
SucessfulTransmission15 = csvread ('SuccessfulTransmission_VS_BAND_FOR_ALLSUs_PPU(.15).csv'); 
SucessfulTransmission00 = csvread ('SuccessfulTransmission_VS_BAND_FOR_ALLSUs_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x3= SucessfulTransmission00 (:,1) ;% this is the results from probabilty of 0.0 
y3= SucessfulTransmission15 (:,1) ;% this is the results from probabilty of 0.15
z3= SucessfulTransmission25 (:,1) ;% this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process
figure(10)
hold on;
plot(x3,'Color','blue','LineWidth',2.0);
plot(y3,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z3,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Bands','Fontweight','Bold');
ylabel('SucessfulTransmission','Fontweight','Bold');
title ('SucessfulTransmission VS BAND FOR ALL SUs','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;
hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ch00 = csvread ('SuccessfulTransmission_VS_CHNANGING_LOADS_FOR_ALLSUs_PPU(.0).csv'); ;
ch15 = csvread ('SuccessfulTransmission_VS_CHNANGING_LOADS_FOR_ALLSUs_PPU(.15).csv'); 
ch25 = csvread ('SuccessfulTransmission_VS_CHNANGING_LOADS_FOR_ALLSUs_PPU(.25).csv'); 
x5= ch00 (:,1); % this is the results from probabilty of 0.0 
y5= ch15 (:,1) ;% this is the results from probabilty of 0.15
z5= ch25 (:,1) ;% this is the results from pro
figure(5)
hold on;
plot(x5,'Color','blue','LineWidth',2.0);
plot(y5,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z5,'Color','green','LineWidth',2.0,'LineStyle','-.');
set(gca,'XTick',[1 2 3 4 5] ); %This is what it's going to appear in those places.
set(gca,'XTickLabel',[5 8 10 12 15] ); %This is what it's going to appear in those places.

xlabel('LOAD','Fontweight','Bold');
ylabel('Successful Tx','Fontweight','Bold');
title ('successful TX Vs Load','Fontweight','Bold');
legend ('changing load 0.0 ','changing load 0.15','changing load 0.25');
grid on;

% Ploting PU Interferance Ratio Results 
%%%%%%%% names of the files that will be imported 
PUinterferance25 = csvread ('PU_Interference_ratio_PPU(.25).csv'); 
PUinterferance15 = csvread ('PU_Interference_ratio_PPU(.15).csv'); 
PUinterferance00 = csvread ('PU_Interference_ratio_PPU(.0).csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x5= PUinterferance00 (:,1); % this is the results from probabilty of 0.0 
y5= PUinterferance15 (:,1) ;% this is the results from probabilty of 0.15
z5= PUinterferance25 (:,1) ;% this is the results from probabilty of 0.25

%%%%%%%%%% the Drawing process
figure(20)
hold on;
plot(x5,'Color','blue','LineWidth',2.0);
plot(y5,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z5,'Color','green','LineWidth',2.0,'LineStyle','-.');
xlabel('Bands','Fontweight','Bold');
ylabel('PUinterferance','Fontweight','Bold');
title ('PUinterferance VS BAND FOR ALL PUs','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ploting Changing The Load VS Bands Taken For SUs for all SUs  VS Time  Results 
%%%%%%%% names of the files that will be imported 

NOOFSU5 = csvread ('NUMBER_0F_SU5.csv'); 
NOOFSU8 = csvread ('NUMBER_0F_SU8.csv'); 
NOOFSU10 = csvread ('NUMBER_0F_SU10.csv'); 
NOOFSU12 = csvread ('NUMBER_0F_SU12.csv'); 
NOOFSU15 = csvread ('NUMBER_0F_SU15.csv'); 


%%%%%%% importing the first colume of each trail to get the graph going on 

x9= NOOFSU5 (:,1); % this is the results from having 5 SU 
y9= NOOFSU8 (:,1); % this is the results from having 8 SU 
z9= NOOFSU10 (:,1); % this is the results from having 10 SU
H9= NOOFSU12 (:,1); % this is the results from having 12 SU 
G9= NOOFSU15 (:,1); % this is the results from having 15 SU 

%%%%%%%%%% the Drawing process 
figure(9)
hold on;
plot(x9,'Color','blue','LineWidth',2.0);
plot(y9,'Color','red','linewidth',2.0,'LineStyle','-.');
plot(z9,'Color','green','LineWidth',2.0,'LineStyle','-.');
plot(H9,'Color','black','LineWidth',2.0,'LineStyle','-.');
plot(G9,'Color','yellow','LineWidth',2.0,'LineStyle','-.');

xlabel('SU ID','Fontweight','Bold');
ylabel('Average Value of Used Bands for each SU  ','Fontweight','Bold');
title ('Changing The Load VS Bands Taken For SUs for all SUs','Fontweight','Bold');
legend ('Probabilty Of ACtivation 0.0 ','Probabilty Of ACtivation 0.15','Probabilty Of ACtivation 0.25 ');
grid on;
hold off;






