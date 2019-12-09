classdef BNFO
    properties
        row  %种群大小
        col  %维度
        lr   %学习率
        cr   %交叉率
        xmax
        xmin
        iternum   %迭代次数
        func      %函数句柄
        version   %版本控制，version = 1：连续版本，version = 2：离散版本 
        L
        isscalar  %函数输出是否为标量,isscalar = 1:函数输出为标量
    end
    
    methods
        function obj = BNFO(shape,lr,cr,xmax,xmin,iternum,func,version,L,isscalar) %shape = [种群大小，维度]
            obj.row = shape(1);
            obj.col = shape(2);
            obj.lr = lr;
            obj.cr = cr;
            obj.xmax = xmax;
            obj.xmin = xmin;
            obj.iternum = iternum;
            obj.func = func;
            obj.version = version;
            obj.L = L;
            obj.isscalar = isscalar;
        end
        %函数声明
        dx = decodeNFO(obj,bx); %二进制解码函数 
        [xc,xw] = location(obj,bx,rslt);
        v = mutationNFO(obj,bx,xc,xw);
        u = crossoverNFO(obj,v,bx);
        [bx,rslt] = selectionNFO(obj,u,bx,rslt);
        rslt = result(obj,x);
        [bestpop,rslt] = iterNFO(obj);
    end
end