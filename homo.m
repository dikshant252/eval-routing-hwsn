function [node] = homo(N,node,E0)
  hold on;
  A=randperm(N);
  for i=1:N
    node(i).id=A(i);
    node(i).ienergy=E0;
    node(i).renergy=node(i).ienergy;
    node(i).type="normal";
    plot(node(i).x,node(i).y,'b^'); #plotting normal nodes
  endfor
  hold off;
endfunction
