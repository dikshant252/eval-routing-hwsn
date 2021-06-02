function [A]=random(N,R)
if R<N
  if R>50
    M=N-R;
  else
    M=R;
  endif
  rand('seed',0);
  flag=1;
  A=ceil(rand(1,M)*N);
  while flag==1
    for i=1:M
      if length(setdiff(A,A(i)))<(M-1)
        A=ceil((rand(1,M)*N));
        flag=1;
        break;
      else
        flag=0;
        endif
    endfor
  endwhile
  B=setdiff([1:N],A);
else
  disp('WRONG');
  B=0;
endif

