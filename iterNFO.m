function [bestpop,rslt_set] = iterNFO(obj)
switch obj.version
    case 1
        bx = obj.xmax*rand(obj.row,obj.col) + obj.xmin;
        prslt = obj.result(bx);
        [rslt,idx] = sort(prslt);%rslt为行向量
        bx = bx(idx,:);
    case 2
        bx = unidrnd(2,obj.row,obj.L*obj.col) - 1;
        dx = obj.decodeNFO(bx);
        prslt = obj.result(dx);
        [rslt,idx] = sort(prslt);%rslt为行向量
        bx = bx(idx,:);
end

rslt_set = zeros(obj.iternum,1); 

for i = 1:obj.iternum
    rslt_set(i) = mean(rslt);
    [xc,xw] = obj.location(bx,rslt);
    v = obj.mutationNFO(bx,xc,xw);
    u = obj.crossoverNFO(v,bx);
    [bx,rslt] = obj.selectionNFO(u,bx,rslt);
end

switch obj.version
    case 1
        bestpop = bx;
    case 2
        bestpop = obj.decodeNFO(bx);
end
