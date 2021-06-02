function [] = directRouting(node,N)
  k=4000; #number of bits transferred
  E_fs=10*10^(-12); #free space amplifying factor
  E_mp=0.0013*10^(-12); #multipath amplifying factor
  n=100; #number of nodes
  s=100; #side of square field
  E_elec=50*10^(-9); #to run the circuitary
  round=0; 
  dnodes=0; #dead nodes
  c_energy=0;  #consumed energy
  E_th=(E_elec*k)+E_mp+(k*s*sqrt(2)); #Threshold energy
  d0=sqrt(E_fs/E_mp); #Threshold distance
  round=0;
  while(dnodes!=N)
    for i=1:100
      if(node(i).renergy>E_th)
        if(node(i).dist<=d0)
          E_tx=(E_elec*k)+(E_fs*k*(node(i).dist)^2);
          node(i).renergy=node(i).renergy-E_tx;
          c_energy=c_energy+E_tx;
        else
          E_tx=(E_elec*k)+(E_mp*k*(node(i).dist)^2);
          node(i).renergy=node(i).renergy-E_tx;
          c_energy=c_energy+E_tx;
        end 
      else
     node(i).status=0;
     dnodes=dnodes+1;
   end
   round=round+1;
    end
    Record(round).dnodes=dnodes;
    Record(round).consumption=c_energy;
   end
  disp("the number of rounds are"),disp(round);
  disp("the number of dead nodes are"),disp(dnodes);   
  %plot([Record(round).dnodes],[N]);
  %  plot([Record(round).dnodes],[Record(round).consumption]);

endfunction
