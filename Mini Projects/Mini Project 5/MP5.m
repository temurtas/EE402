%% - T=0.1
hold off

z = tf ([1 0],[1],0.1)

G_z= (0.047*z+0.044)/(z^2-1.8*z+0.82)
bode(G_z)
grid on
hold on
%T=0.1
%z1 = (1+T*s)/(1-T*s)
%G_z_T= (0.047*z1+0.044)/(z1^2-1.8*z1+0.82) % Find Tustin Tr.
G_z_T= d2c(G_z,'tustin')
bode(G_z_T)

hold off
figure()
bode(G_z_T)
grid on

%% for PM 25-30
hold off

a=1.1
K=1
T_l=0.35 
PC = K*(T_l*a*s+1)/(T_l/a*s+1)
PC=1/PC
bode(PC)
grid on
hold off
G_z_T_comp=G_z_T*PC
bode(G_z_T,{0,100})
grid on
hold on
bode(G_z_T_comp,{0,100})

hold off
figure()
step(G_z_T_comp)
grid on

%% for PM 10-15
hold off

a=1.6
K=1
T_l=0.25 
PC = K*(T_l*a*s+1)/(T_l/a*s+1)
PC=1/PC
bode(PC)
grid on
hold off
G_z_T_comp=G_z_T*PC
bode(G_z_T,{0,100})
grid on
hold on
bode(G_z_T_comp,{0,100})

hold off
figure()
step(G_z_T_comp)
grid on


%% - T=0.05
hold off

z = tf ([1 0],[1],0.05)

G_z= (0.047*z+0.044)/(z^2-1.8*z+0.82)
bode(G_z)
grid on
hold on
%T=0.1
%z1 = (1+T*s)/(1-T*s)
%G_z_T= (0.047*z1+0.044)/(z1^2-1.8*z1+0.82) % Find Tustin Tr.
G_z_T= d2c(G_z,'tustin')
bode(G_z_T)

hold off
figure()
bode(G_z_T)
grid on

%% for PM 35-30
hold off
s=tf([1 0],[1])
a=1.15
K=1
T_l=0.37 
PC = K*(T_l*a*s+1)/(T_l/a*s+1)
PC=1/PC
bode(PC)
grid on
hold off
G_z_T_comp=G_z_T*PC
bode(G_z_T,{0,100})
grid on
hold on
bode(G_z_T_comp,{0,100})

hold off
figure()
step(G_z_T_comp)
grid on

%% for PM 10-15
hold off

a=1.6
K=1
T_l=0.25 
PC = K*(T_l*a*s+1)/(T_l/a*s+1)
PC=1/PC
bode(PC)
grid on
hold off
G_z_T_comp=G_z_T*PC
bode(G_z_T,{0,100})
grid on
hold on
bode(G_z_T_comp,{0,100})

hold off
figure()
step(G_z_T_comp)
grid on





%% To choose desired a
s = tf([1 0],[1])
hold off
a=1.5
K=1
T_l=1
PC = K*(T_l*a*s+1)/(T_l/a*s+1)  
bode(PC)
grid on
hold on 
a=2 %% Choose a=1.8
K=1
T_l=1
PC = K*(T_l*a*s+1)/(T_l/a*s+1)  
bode(PC)
hold on 
a=1.1
K=1
T_l=1
PC = K*(T_l*a*s+1)/(T_l/a*s+1) 
figure()
PC=1/PC
bode(PC)
grid on

