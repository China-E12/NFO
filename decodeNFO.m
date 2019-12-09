function dpop = decodeNFO(obj,bpop)
dpop = zeros(obj.row,obj.col);
superscript_single = sort(linspace(1,obj.L,obj.L)-1,'descend');
superscript_set = repmat(superscript_single,1,obj.col);
decode_array = bpop.*(2.^superscript_set);
for i =1:obj.col
   dpop(:,i) = sum(decode_array(:,(obj.L*i -(obj.L - 1)):i * obj.L),2); 
end
ones_array = ones(1,obj.L);
x_range = ones_array.*(2.^superscript_single);
x_max_range = sum(x_range,2);
dpop = dpop/x_max_range .* (obj.xmax-obj.xmin) + obj.xmin;