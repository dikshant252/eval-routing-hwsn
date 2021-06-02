
  N=100; #no of nodes
  a=2;   #energy constant for ADVANCED nodes
  b=3;   #energy constant for SUPER nodes
  E0=input("enter initial energy for each node:");  #initial energy of each node
  
  
  sink.x=50;  # x-coordinate of sink
  sink.y=125;  #y coordinate of sink
  figure();
  hold on;     
  plot([sink.x],[sink.y],'rx');
  
  for i=1:N
    node(i).id=i;
    node(i).x = rand*100;
    node(i).y = rand*100;
    node(i).status=1;
    node(i).dist=sqrt((node(i).x-sink.x)^2+(node(i).y-sink.y)^2); #distance b/w sink and a node
  endfor
  
  level=input("enter level of heterogenity:");
  switch level
    case 1
      node=homo(N,node,E0);
    case 2
      m=input("enter fraction of advanced nodes:"); #fraction of ADVANCED nodes
      node=level_2(m,N,node,a,E0);
    case 3
       m=input("enter fraction of advanced nodes:"); #fraction of ADVANCED nodes
       n=input("enter fraction of super nodes:"); #fraction of SUPER nodes
       level_3(m,n,N,node,E0,b,a)
  endswitch
       
  %o = input("Enter 1 for Obstacle:");
  %if o == 1
   % obs1();
  %else
 %   continue;
%  endif
%directRouting(node,N);