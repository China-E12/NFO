function [nextpop,rslt] = selectionNFO(obj,u,bpop,rslt)
switch obj.version
    case 1
        urslt = obj.result(u);
        idx = find(rslt>urslt);
        bpop(idx,:) = u(idx,:);
        rslt = obj.result(bpop);
        nextpop = bpop;
        
    case 2
        du = obj.decodeNFO(u);
        urslt = obj.result(du);
        idx = find(rslt>urslt);
        bpop(idx,:) = u(idx,:);
        decodenextpop = obj.decodeNFO(bpop);
        rslt = obj.result(decodenextpop);
        nextpop = bpop;
end
