function [prslt]=result(obj,bx)
if obj.isscalar ~= 1
    prslt = obj.func(bx);
elseif obj.isscalar == 1
    prslt = zeros(obj.row,1);
    for i = 1:obj.row
        prslt(i) = obj.func(bx(i,:));
    end
end
end