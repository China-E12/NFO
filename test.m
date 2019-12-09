clear; clc; tic
shape = [30 2];
lr = 1.3;%连续lr = 1.3,二进制lr = 0.3
cr = 0.1;
iternum = 300;
version = 1;%version = 1,连续NFO;version = 2,二进制BNFO
xmax = 5;
xmin = -5;
L = 10;%编码长度
rng('default')
rng('shuffle')
isscalar = 1;%isscalar = 1:函数输出为标量

%1:ackley, 2:spheref, 3:rastr, 4:rosen, 5:schaffer2
num = 3;
[func,funcname] = test_function(num);

Nfo = BNFO(shape,lr,cr,xmax,xmin,iternum,func,version,L,isscalar);
[x,rslt] = Nfo.iterNFO();
fprintf('Test function:%s\n',funcname);
fprintf('Time:%0.4fs\n',toc);
disp('The last generation:');
disp(x);

plot(linspace(1,iternum,iternum),rslt)
xlabel('iteration number')
ylabel('value')

%reference
%Surjanovic, S. & Bingham, D. (2013). Virtual Library of Simulation Experiments: Test Functions and Datasets. Retrieved November 21, 2019, from http://www.sfu.ca/~ssurjano.