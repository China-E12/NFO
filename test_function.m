function [funcname,testname] = test_function(num)

    function [y] = ackley(xx, a, b, c)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % ACKLEY FUNCTION
        %
        % Authors: Sonja Surjanovic, Simon Fraser University
        %          Derek Bingham, Simon Fraser University
        % Questions/Comments: Please email Derek Bingham at dbingham@stat.sfu.ca.
        %
        % Copyright 2013. Derek Bingham, Simon Fraser University.
        %
        % THERE IS NO WARRANTY, EXPRESS OR IMPLIED. WE DO NOT ASSUME ANY LIABILITY
        % FOR THE USE OF THIS SOFTWARE.  If software is modified to produce
        % derivative works, such modified software should be clearly marked.
        % Additionally, this program is free software; you can redistribute it
        % and/or modify it under the terms of the GNU General Public License as
        % published by the Free Software Foundation; version 2.0 of the License.
        % Accordingly, this program is distributed in the hope that it will be
        % useful, but WITHOUT ANY WARRANTY; without even the implied warranty
        % of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
        % General Public License for more details.
        %
        % For function details and reference information, see:
        % http://www.sfu.ca/~ssurjano/
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % INPUTS:
        %
        % xx = [x1, x2, ..., xd]
        % a = constant (optional), with default value 20
        % b = constant (optional), with default value 0.2
        % c = constant (optional), with default value 2*pi
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        d = length(xx);
        
        if (nargin < 4)
            c = 2*pi;
        end
        if (nargin < 3)
            b = 0.2;
        end
        if (nargin < 2)
            a = 20;
        end
        
        sum1 = 0;
        sum2 = 0;
        for ii = 1:d
            xi = xx(ii);
            sum1 = sum1 + xi^2;
            sum2 = sum2 + cos(c*xi);
        end
        
        term1 = -a * exp(-b*sqrt(sum1/d));
        term2 = -exp(sum2/d);
        
        y = term1 + term2 + a + exp(1);
        
    end

    function [y] = spheref(xx)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % SPHERE FUNCTION
        %
        % Authors: Sonja Surjanovic, Simon Fraser University
        %          Derek Bingham, Simon Fraser University
        % Questions/Comments: Please email Derek Bingham at dbingham@stat.sfu.ca.
        %
        % Copyright 2013. Derek Bingham, Simon Fraser University.
        %
        % THERE IS NO WARRANTY, EXPRESS OR IMPLIED. WE DO NOT ASSUME ANY LIABILITY
        % FOR THE USE OF THIS SOFTWARE.  If software is modified to produce
        % derivative works, such modified software should be clearly marked.
        % Additionally, this program is free software; you can redistribute it
        % and/or modify it under the terms of the GNU General Public License as
        % published by the Free Software Foundation; version 2.0 of the License.
        % Accordingly, this program is distributed in the hope that it will be
        % useful, but WITHOUT ANY WARRANTY; without even the implied warranty
        % of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
        % General Public License for more details.
        %
        % For function details and reference information, see:
        % http://www.sfu.ca/~ssurjano/
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % INPUT:
        %
        % xx = [x1, x2, ..., xd]
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        d = length(xx);
        sum = 0;
        for ii = 1:d
            xi = xx(ii);
            sum = sum + xi^2;
        end
        
        y = sum;
        
    end

    function [y] = rastr(xx)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % RASTRIGIN FUNCTION
        %
        % Authors: Sonja Surjanovic, Simon Fraser University
        %          Derek Bingham, Simon Fraser University
        % Questions/Comments: Please email Derek Bingham at dbingham@stat.sfu.ca.
        %
        % Copyright 2013. Derek Bingham, Simon Fraser University.
        %
        % THERE IS NO WARRANTY, EXPRESS OR IMPLIED. WE DO NOT ASSUME ANY LIABILITY
        % FOR THE USE OF THIS SOFTWARE.  If software is modified to produce
        % derivative works, such modified software should be clearly marked.
        % Additionally, this program is free software; you can redistribute it
        % and/or modify it under the terms of the GNU General Public License as
        % published by the Free Software Foundation; version 2.0 of the License.
        % Accordingly, this program is distributed in the hope that it will be
        % useful, but WITHOUT ANY WARRANTY; without even the implied warranty
        % of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
        % General Public License for more details.
        %
        % For function details and reference information, see:
        % http://www.sfu.ca/~ssurjano/
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % INPUT:
        %
        % xx = [x1, x2, ..., xd]
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        d = length(xx);
        sum = 0;
        for ii = 1:d
            xi = xx(ii);
            sum = sum + (xi^2 - 10*cos(2*pi*xi));
        end
        
        y = 10*d + sum;
        
    end

    function [y] = rosen(xx)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % ROSENBROCK FUNCTION
        %
        % Authors: Sonja Surjanovic, Simon Fraser University
        %          Derek Bingham, Simon Fraser University
        % Questions/Comments: Please email Derek Bingham at dbingham@stat.sfu.ca.
        %
        % Copyright 2013. Derek Bingham, Simon Fraser University.
        %
        % THERE IS NO WARRANTY, EXPRESS OR IMPLIED. WE DO NOT ASSUME ANY LIABILITY
        % FOR THE USE OF THIS SOFTWARE.  If software is modified to produce
        % derivative works, such modified software should be clearly marked.
        % Additionally, this program is free software; you can redistribute it
        % and/or modify it under the terms of the GNU General Public License as
        % published by the Free Software Foundation; version 2.0 of the License.
        % Accordingly, this program is distributed in the hope that it will be
        % useful, but WITHOUT ANY WARRANTY; without even the implied warranty
        % of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
        % General Public License for more details.
        %
        % For function details and reference information, see:
        % http://www.sfu.ca/~ssurjano/
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % INPUT:
        %
        % xx = [x1, x2, ..., xd]
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        d = length(xx);
        sum = 0;
        for ii = 1:(d-1)
            xi = xx(ii);
            xnext = xx(ii+1);
            new = 100*(xnext-xi^2)^2 + (xi-1)^2;
            sum = sum + new;
        end
        
        y = sum;
        
    end

    function [y] = schaffer2(xx)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % SCHAFFER FUNCTION N. 2
        %
        % Authors: Sonja Surjanovic, Simon Fraser University
        %          Derek Bingham, Simon Fraser University
        % Questions/Comments: Please email Derek Bingham at dbingham@stat.sfu.ca.
        %
        % Copyright 2013. Derek Bingham, Simon Fraser University.
        %
        % THERE IS NO WARRANTY, EXPRESS OR IMPLIED. WE DO NOT ASSUME ANY LIABILITY
        % FOR THE USE OF THIS SOFTWARE.  If software is modified to produce
        % derivative works, such modified software should be clearly marked.
        % Additionally, this program is free software; you can redistribute it
        % and/or modify it under the terms of the GNU General Public License as
        % published by the Free Software Foundation; version 2.0 of the License.
        % Accordingly, this program is distributed in the hope that it will be
        % useful, but WITHOUT ANY WARRANTY; without even the implied warranty
        % of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
        % General Public License for more details.
        %
        % For function details and reference information, see:
        % http://www.sfu.ca/~ssurjano/
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % INPUT:
        %
        % xx = [x1, x2]
        %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        x1 = xx(1);
        x2 = xx(2);
        
        fact1 = (sin(x1^2-x2^2))^2 - 0.5;
        fact2 = (1 + 0.001*(x1^2+x2^2))^2;
        
        y = 0.5 + fact1/fact2;
        
    end

    if num == 1
        funcname = @ackley;
        testname = 'ackley';
    elseif num == 2
        funcname = @spheref;
        testname = 'spheref';
    elseif num ==3
        funcname = @rastr;
        testname = 'rastr';
    elseif num == 4
        funcname = @rosen;
        testname = 'rosen';
    elseif num == 5
        funcname = @schaffer2;
        testname = 'schaffer2';
    end
end