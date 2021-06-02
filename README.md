# eval-routing-hwsn
Performance Evaluation on routing protocols in presence of obstacles on Heterogeneous Wireless Sensor Network


•	Step1- We will  make array of data structure of type “node” and deploy such 100 nodes into 100 x 100 field in our main file. 
•	Step2-  Plot sink at Centre of this field 
•	Step3-Get initial energy of each node and heterogeneity level of network from user.  
•	Step4- Use switch case for implementing both the cases of heterogeneity level 2 and 3.
•	Step5- For case 2 call function file level_2()  and for case 3 call function file level_3(). 
•	Step6- In function file level_2() call function file rindex() to get random ids for m*N number of advanced nodes where  ‘m’ is fractionof advanced nodes and ‘N’ is total number of nodes. Return array ‘A’ to the level_2() file.  
•	Step7-  Then for normal nodes use function setdiff() to get the remaining ids which are not present in array ‘A’ .
•	Step8-In function file level_3() call function file rindex() to get random ids for n*N number of super nodes where  ‘n’ is fraction of 		super nodes and ‘N’ is  total number of nodes. Return array ‘A’ to the level_3() file.
•	Step9-  For  advance node use function setdiff () to get remaining ‘mN’ nodes in a for loop . In array ‘B’ append the ids of advanced and super nodes . Use setdiff() to get id’s for  remaining normal nodes. 
•	Step10- Call directRouting from main file.
•	Step 11-. Then we initialize these variable
	 k_bits (number of bits)
	 E_fs (free space amplification factor)
	 E_mp (multipath amplification factor)
	d0=sqrt(E_fs/E_mp)(maximum distance)
–	E_elec
–	E_th (threshold energy)
–	cenergy (consumed energy)
–	Dnodes (dead nodes)
•	Step 12-. Use First Order Radio Model to call E_tx i.e. transmission energy
•	Step 13- If dist <= d0 then use free space amplifying factor to calculate energy and add E_tx to cenergy  
•	Step 14-. Else dist > d0 them use multipath amplifying factor to calculate energy and add E_tx to cenergy 
•	Step 15-While node.renergy > E_th increment round else status=0 and increment dnodes.
•	Step 16-.After this, we will implement multipath routing in which each node uses alternative path through a network to improve network performance in terms of energy consumption, lifetime etc. 
•	Step 17- After implementing the routing protocols, we are going to record the network performance in terms of energy consumption while following the First Order Radio Model.
•	Step 18-.Then we will deploy a random obstacle between any two nodes.
•	Step 19- The step 4 is going to be repeated but now in presence of obstacle.
•	Step 20-.Finally we are going to analyze their performance with the help of graphs
