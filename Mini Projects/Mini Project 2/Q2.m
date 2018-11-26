%% %%%%%%%%%%%%%%%% part b %%%%%%%%%%%%%%%%%%%%%%%
    clear
    clc
    num = [0 1 zeros(1,21) ]
    num_lenght= length(num)
    den = [1 1.6 -0.11 -1.45 -0.88 -0.16 zeros(1,17)]
    den_lenght= length(den)
    %ss= tf(num,den)

    i=1
    a=0
    while i<num_lenght
        if num(i)== 0
            i=i+1
            a=a+1
        else    
            w=i
            while w>1
                den2(w-1)=0
                w=w-1
            end
            q=i
            den_lenght2=length(den2)
            while q<den_lenght+den_lenght2+1
                if q-den_lenght2<1
                    q=q+1
                else
                    den2(q)=(num(i)/(den(1)))*den(q-den_lenght2)
                    q=q+1
                end
            end
            x_b(i)=num(i)
            u=i
            while u<length(num)
                num(u)=num(u)-den2(u)
                u=u+1
            end
            i=i+1
            clearvars den2
        end

    end
    x_b(i-1)=[]
    %% x[-1] is left untouched since the internal matlab func at part d leaves it, x_b(1)=[] removes it
    %% %%%%%%%%%%%%% end of part b %%%%%%%%%%%%%%%%%%%
    %% %%%%%%%%%%%%%%%% part a %%%%%%%%%%%%%%%%%%%%%%%
    i=1
    while i<21
        x(1)=0
        x_a(i+1)=(100/729)+(-50/27)*i*(-0.5)^(i)-(100/9)*(-0.5)^(i)+(-320/81)*i*(-0.8)^(i)+(8000/729)*(-0.8)^(i)
        i=i+1
    end
    v=[0 20 -1 1]
    axis(v)
    
    k=0:20
    %% %%%%%%%%%%%%% end of part a %%%%%%%%%%%%%%%%%%%
    %% %%%%%%%%%%%%%%%% part c %%%%%%%%%%%%%%%%%%%%%%%
    i=1
    x_c=zeros(1,5) % Initialize the array with k<0 values
    while i<21
        m=i+5
        x_c(m)=(-1.6)*x_c(m-1)+(0.11)*x_c(m-2)+(1.45)*x_c(m-3)+(0.88)*x_c(m-4)+(0.16)*x_c(m-5)+mydelta(m-1)
        i=i+1
    end
    x_c(1)=[] % Delete x[-5] 
    x_c(1)=[] % Delete x[-4]
    x_c(1)=[] % Delete x[-3]
    x_c(1)=[] % Delete x[-2]
    %% x[-1] is left untouched since the internal matlab func at part d leaves it, x_b(1)=[] removes it
    %% %%%%%%%%%%%%% end of part c %%%%%%%%%%%%%%%%%%%
    %% %%%%%%%%%%%%%%%% part d %%%%%%%%%%%%%%%%%%%%%%%
    num = [0 1 0 0 0 0 ]

    den = [1 1.6 -0.11 -1.45 -0.88 -0.16]

    %% Inverse Z Part 
    x=[1 zeros(1,20)]
    x_d=filter(num,den,x) %filter to finde inverse z transfor
    %% %%%%%%%%%%%%% end of part d %%%%%%%%%%%%%%%%%%%
    %% %%%%%%%%%%%%%%%% part e %%%%%%%%%%%%%%%%%%%%%%%
    %% plot x_a
    subplot(2,2,1)
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_a,'o',k,x_a,'-')
    legend('part a')
    grid
    title('Partial Fraction Expansion Method')
    xlabel('k')
    ylabel('x[k]')
    %% plot x_b
    subplot(2,2,2);
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_b,'o',k,x_b,'-')
    legend('part b')
    grid
    title('Long Division Method using Matlab')
    xlabel('k')
    ylabel('x[k]')
    %% plot x_c
    subplot(2,2,3);
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_c,'o',k,x_c,'-') 
    legend('part c')
    grid
    title('Treating X(z) as System Method ')
    xlabel('k')
    ylabel('x[k]')
    %% plot x_d
    subplot(2,2,4);
    v=[0 20 -1 1]
    axis(v)
    k=0:20
    plot(k,x_d,'o',k,x_d,'-') 
    legend('part d')
    grid
    title('Using Internal Matlab Functions')
    xlabel('k')
    ylabel('x[k]')
    %% %%%%%%%%%%%%% end of part e %%%%%%%%%%%%%%%%%%%