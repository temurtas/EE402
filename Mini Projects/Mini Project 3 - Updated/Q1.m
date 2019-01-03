%% First Part Kp=2 / Kd=0
syms z 
Y_1a = 0.225*(z^2+z)/((z^2-2*z+1.225)*(z-1))
y_1a = iztrans(Y_1a)
subs(y_1a,0:50)
subplot(2,2,1)
stem(0:50,ans)
title('The step response of y_1[k] in part 1d')
xlabel('k')
ylabel('y_1[k]')
subs(y_1a,0:100)
subplot(2,2,2)
stem(0:100,ans)
title('The step response of y_1[k] in part 1d')
xlabel('k')
ylabel('y_1[k]')

%% 

syms z 
Y_2a = 1.04*z/(z^2-2*z+1.225)
y_2a = iztrans(Y_2a)
subs(y_2a,0:50)
subplot(2,2,3)
stem(0:50,ans)
title('The step response of y_2[k] in part 1d')
xlabel('k')
ylabel('y_2[k]')
subs(y_2a,0:100)
subplot(2,2,4)
stem(0:100,ans)
title('The step response of y_2[k] in part 1d')
xlabel('k')
ylabel('y_2[k]')


%% Second Part Kp=2 / Kd=2

syms z 
Y_2a = 0.225*(z^2+z)/((z^2-0.93*z+0.225)*(z-1))
y_2a = iztrans(Y_2a)
subs(y_2a,0:50)
subplot(2,2,1)
stem(0:50,ans)
title('The step response of y_1[k] in part 1f')
xlabel('k')
ylabel('y_1[k]')
subs(y_2a,0:100)
subplot(2,2,2)
stem(0:100,ans)
title('The step response of y_1[k] in part 1f')
xlabel('k')
ylabel('y_1[k]')

%% 

syms z 
Y_2b = 1.04*z/(z^2-0.93*z+0.225)
y_2b = iztrans(Y_2b)
subs(y_2b,0:50)
subplot(2,2,3)
stem(0:50,ans)
title('The step response of y_2[k] in part 1f')
xlabel('k')
ylabel('y_2[k]')
subs(y_2b,0:100)
subplot(2,2,4)
stem(0:100,ans)
title('The step response of y_2[k] in part 1f')
xlabel('k')
ylabel('y_2[k]')

