function bpop = crossoverNFO(obj,v,bpop)
switch obj.version
    case 1
        idxary = rand(obj.row,obj.col);
        [row,col] = find(idxary  < obj.cr);
        jary = unidrnd(obj.col,obj.row,obj.col);
        idxary = linspace(1,obj.col,obj.col);
        full_idxary = repmat(idxary,obj.row,1);
        [idxrow,idxcol] = find(jary == full_idxary);
        bpop(row,col) = v(row,col);
        bpop(idxrow,idxcol) = v(idxrow,idxcol);
    case 2
        idxary = rand(obj.row,obj.L*obj.col);
        [row,col] = find(idxary  < obj.cr);
        jary = unidrnd(obj.col,obj.row,obj.L*obj.col);
        idxary = linspace(1,obj.col,obj.L*obj.col);
        full_idxary = repmat(idxary,obj.row,1);
        [idxrow,idxcol] = find(jary == full_idxary);
        bpop(row,col) = v(row,col);
        bpop(idxrow,idxcol) = v(idxrow,idxcol);
end