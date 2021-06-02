function [] = obs1()
  nObs = randi([2,10]);
  printf("No. of obstacles are: %d\n",nObs);
  for i=1:nObs
    noVertex = randi([3,6]); #no. of vertices of obstacles
    printf("No. of Vertices are %d\n",noVertex);
    X = [];  #x coordinates of vertices of obstacle
    Y = [] ; #y coordinates of vertices of obstacle
    X = [X (rand*100)];
    #y1 = X(1)+rand;
    Y = [Y (rand*100)];
    for i=2:noVertex
      x = X(1)+rand*10;
      y = Y(1)+rand*10;
      X = [X x];
      Y = [Y y];
    endfor
    disp(X);
    disp(Y);
    #sorting these coordinates in clockwise manner
    mx = mean(X);
    my = mean(Y);
    A=[];
    for q= 1:noVertex
      A(q) = atan2(Y(q)-my,X(q)-mx);
    endfor
    [~,order] = sort(A); #this sorts A and gives us the order of sorting
    X = X(order); #x coordinates are sorted acc to order
    Y = Y(order); #y coordinates are sorted acc to order
    #disp(X);
    #disp(Y);
    hold on;
    for i=1:noVertex
      plot([X(i)],[Y(i)]);
      if i>1
        plot([X(i) X(i-1)],[Y(i) Y(i-1)]);
      endif
    endfor
    plot([X(1) X(noVertex)],[Y(1) Y(noVertex)]);
    
    hold off;
  
    area = 0;
    b= noVertex; #The last vertex is the 'previous' one to the first
    for a = 1:noVertex
      area = area + (X(b)+X(a))*(Y(b)-Y(a));
      b = a; #b is previous vertex to a
    endfor
    area = (area/2)*(-1);
    
  endfor
endfunction
