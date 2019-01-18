%% Q5a
clc
clear
x_1(1)=4
x_2(1)=0
i=2
while i<12
    x_1(i)=-0.5*x_1(i-1)+0.5*x_2(i-1)
    x_2(i)=-0.5*x_1(i-1)+0.5*x_2(i-1)
    i=i+1
end

k=0:10
plot(k,x_1,'LineWidth',2)
hold on 
plot(k,x_2,'-*','LineWidth',2)
grid on
xlabel('k')
ylabel('x_i[k]')
title('x_1[k] & x_2[k] with given initial conditions')
legend('x_1[k]','x_2[k]')
savefig('q5a.fig');
fig=openfig('q5a.fig');
saveas(fig,'q5a.png');
close(fig);
hold off;

%% Q5b
clc
clear
x_1(1)=0
x_2(1)=0
x_1(2)=4
x_2(2)=0

i=3
while i<13
    x_3(i-1)=-1/4*x_1(i-2)-5/4*x_2(i-2)
    x_1(i)=-3/4*x_1(i-1)+7/4*x_2(i-1)-x_3(i-1)
    x_2(i)=-1/4*x_1(i-1)-3/4*x_2(i-1)+x_3(i-1)
    i=i+1
end

k=-1:10
plot(k,x_1,'LineWidth',2)
hold on 
plot(k,x_2,'-*','LineWidth',2)
grid on
xlabel('k')
ylabel('x_i[k]')
title('x_1[k] & x_2[k] with given initial conditions and delay')
legend('x_1[k]','x_2[k]')
savefig('q5b.fig');
fig=openfig('q5b.fig');
saveas(fig,'q5b.png');
close(fig);
hold off;

%% Q6
clc
clear
x_1(1)=4
x_2(1)=0
i=2
while i<12
    x_1(i)=0.894*x_1(i-1)+0*x_2(i-1)
    x_2(i)=-0.393*x_1(i-1)-0.894*x_2(i-1)
    i=i+1
end

k=0:10
plot(k,x_1,'LineWidth',2)
hold on 
plot(k,x_2,'LineWidth',2)
grid on
xlabel('k')
ylabel('x_i[k]')
title('x_1[k] & x_2[k] with given initial conditions')
legend('x_1[k]','x_2[k]')
savefig('q6.fig');
fig=openfig('q6.fig');
saveas(fig,'q6.png');
close(fig);
hold off;
