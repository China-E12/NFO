function [sup,inf] = location(obj,bpop,rslt)
continues = 1; discrete = 2;
switch obj.version
    case continues
        one_array = ones(obj.row,1);
        xcopy = kron(bpop,one_array);   
        hamming_array = sqrt(sum((xcopy-repmat(bpop,obj.row,1)).^2,2));
        hamming_distance = reshape(hamming_array,obj.row,obj.row);%�Գƾ���
        %��xc
        [all_x_rslt,x_rslt] = meshgrid(rslt,rslt);
        c = all_x_rslt > x_rslt;
        c_hamming = c .* hamming_distance; %������Ч��distance
        cmin = abs(log(c_hamming+0.00001)); %��֤ȡ���������Сֵ
        [~,cidx] = min(cmin);
        sup = bpop(cidx,:);
        w = all_x_rslt < x_rslt;
        w_hamming = w .* hamming_distance; %������Ч��distance
        wmin = abs(log(w_hamming+0.00001));
        [~,widx] = min(wmin);
        inf = bpop(widx,:);
    case discrete
        one_array = ones(obj.row,1);
        xcopy = kron(bpop,one_array);
        hamming_array = sum(xor(xcopy,repmat(bpop,obj.row,1)),2);
        hamming_distance = reshape(hamming_array,obj.row,obj.row);%�Գƾ���
        %��xc
        [all_x_rslt,x_rslt] = meshgrid(rslt,rslt);
        c = all_x_rslt > x_rslt;
        c_hamming = c .* hamming_distance; %������Ч��hamming distance
        cmin = abs(log(c_hamming+0.00001));
        [~,cidx] = min(cmin);
        sup = bpop(cidx,:);
        %��xw
        w = all_x_rslt < x_rslt;
        w_hamming = w .* hamming_distance; %������Ч��hamming distance
        wmin = abs(log(w_hamming+0.00001));
        [~,widx] = min(wmin);
        inf = bpop(widx,:);
end