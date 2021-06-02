function [node]= level_2(m,N,node,a,E0)
  hold on;
  A=random(N,m*N);
  for i=1:(m*N)
    node(i).id=A(i);
    node(i).ienergy=E0+a*E0;
    node(i).renergy=node(i).ienergy;
    node(i).type='advanced';
    plot(node(i).x,node(i).y,'b^'); #plotting advanced nodes
  end
  B=setdiff([1:100],A);
  j=1;
  for i=(m*N+1):N
    node(i).id=B(j);
    node(i).ienergy=E0;
    node(i).renergy=node(i).ienergy;
    node(i).type="normal";
    plot(node(i).x,node(i).y,'y^'); #plotting normal nodes
  %else
  %  continue;
  j=j+1;
 end
 o = input("Enter 1 for Obstacle:");
 if o == 1
    obs1();
  else
    continue;
  endif
directRouting(node,N);
endfunction
