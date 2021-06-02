function [node]= level_3 (m,n,N,node,a,b,E0)
  hold on;
  u=N-m*N;  #no of NORMAL nodes
  v=(n*m*N); #no of SUPER nodes  
  w=(m*N)-v; #no of ADVANCED nodes
  A=random(N,m*N);
  B=setdiff([1:100],A);
  C=random(m*N,v);
  D=setdiff([1:m*N],C);
  for i=1:v
    node(i).id=C(i);
    node(i).ienergy=E0+b*E0;
    node(i).renergy=node(i).ienergy;
    node(i).type="super";
    plot([node(i).x],[node(i).y],'g^'); #plotting SUPER nodes
  end
  
  j=1;
  for i=v+1:m*N
    node(i).id=D(j);
  #  C(j)=B(j);
    node(i).ienergy=E0+a*E0;
    node(i).renergy=node(i).ienergy;
    node(i).type="advanced";
    plot([node(i).x],[node(i).y],'b^'); #plotting ADVANCED nodes
   j=j+1;
  end
  #D=[];
  
   p=1;
  for i=m*N+1:N
    node(i).id=B(p);
    node(i).ienergy=E0;
    node(i).renergy=node(i).ienergy;
    node(i).type="normal";
    plot([node(i).x],[node(i).y],'y^');   #plotting normal nodes
  p=p+1;    
end
o = input("Enter 1 for Obstacle:");
  if o == 1
    obs1();
  else
    continue;
  endif
directRouting(node,N);
endfunction
