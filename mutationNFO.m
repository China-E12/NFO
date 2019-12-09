function v = mutationNFO(obj,bpop,xc,xw)
switch obj.version
    case 1
        v = bpop + obj.lr .* rand(obj.row,obj.col) .* ( xc - bpop) + obj.lr .* rand(obj.row,obj.col).*( xc - xw);
    case 2
        r1 = rand(obj.row,obj.L*obj.col) < obj.lr;
        r2 = rand(obj.row,obj.L*obj.col) < obj.lr;
        v1 = and(r1,xor(xc,bpop));
        v2 = and(r2,xor(xc,xw));
        v = xor(bpop,or(v1,v2));
end