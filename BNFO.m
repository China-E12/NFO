classdef BNFO
    properties
        row  %��Ⱥ��С
        col  %ά��
        lr   %ѧϰ��
        cr   %������
        xmax
        xmin
        iternum   %��������
        func      %�������
        version   %�汾���ƣ�version = 1�������汾��version = 2����ɢ�汾 
        L
        isscalar  %��������Ƿ�Ϊ����,isscalar = 1:�������Ϊ����
    end
    
    methods
        function obj = BNFO(shape,lr,cr,xmax,xmin,iternum,func,version,L,isscalar) %shape = [��Ⱥ��С��ά��]
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
        %��������
        dx = decodeNFO(obj,bx); %�����ƽ��뺯�� 
        [xc,xw] = location(obj,bx,rslt);
        v = mutationNFO(obj,bx,xc,xw);
        u = crossoverNFO(obj,v,bx);
        [bx,rslt] = selectionNFO(obj,u,bx,rslt);
        rslt = result(obj,x);
        [bestpop,rslt] = iterNFO(obj);
    end
end