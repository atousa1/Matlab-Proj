

function [low, high] = minmax(x)
   if nargin != 1, 
         usage("minmax(vector)"); 
      end; 
      if isvector(x),
      low = x(1);
      high = x(1); 
      for i = 2: length(x),
        if x(i) < low
           low = x(i); 
          elseif x(i) > high, 
          high = x(i); 
        end ; 
      end; 
     else 
       error("minmax expects a vector!");
     end; 
endfunction
