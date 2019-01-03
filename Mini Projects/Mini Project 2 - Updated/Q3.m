%% %%%%%%%%%%%%%%%% part a %%%%%%%%%%%%%%%%%%%%%%%
    i=1
    while i<21
        x(1)=0
        x_a(i+1)=-(189/4)*(3)^(i)+(376/9)*(4)^(i)+10*(2)^(i)+(1/6)*(i)+17/36
        i=i+1
    end
    v=[0 20 -1 1]
    axis(v)
    
    k=0:20
%% %%%%%%%%%%%%% end of part a %%%%%%%%%%%%%%%%%%%  
%% %%%%%%%%%%%%%%%% part b %%%%%%%%%%%%%%%%%%%%%%%
    i=1
    while i<21
        x(1)=0
        x_b(i+1)=-(189/4)*(3)^(i)+(376/9)*(4)^(i)+10*(2)^(i)+(1/6)*(i)+17/36
        i=i+1
    end
    v=[0 20 -1 1]
    axis(v)
    
    k=0:20
%% %%%%%%%%%%%%% end of part b %%%%%%%%%%%%%%%%%%%  
%% %%%%%%%%%%%%%%%% part c %%%%%%%%%%%%%%%%%%%%%%%   
    i=1
    x_c=zeros(1,3) % Initialize the array with k<0 values
    while i<21
        m=i+3
        x_c(m)=(7)*x_c(m-1)-(12)*x_c(m-2)+5*2^m+m
        i=i+1
    end
    x_c(1)=[] % Delete x[-3]
    x_c(1)=[] % Delete x[-2]
%% %%%%%%%%%%%%% end of part c %%%%%%%%%%%%%%%%%%% 
%% plot x_a
    subplot(2,2,1)
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_a,'o',k,x_a,'-')
    legend('part a')
    grid
    title('By solving difference equation directly')
    xlabel('k')
    ylabel('x[k]')
%% plot x_b
    subplot(2,2,2)
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_b,'o',k,x_b,'-')
    legend('part b')
    grid
    title('By solving the difference equation equation in Z-Domain')
    xlabel('k')
    ylabel('x[k]')
%% plot x_c
    subplot(2,2,3)
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_c,'o',k,x_c,'-')
    legend('part c')
    grid
    title('By Simulating Difference Equation using Matlab')
    xlabel('k')
    ylabel('x[k]')