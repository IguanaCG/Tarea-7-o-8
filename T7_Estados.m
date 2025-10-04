
Ra = 1;   
La = 0.5;  
Ke = 0.01; 
Kt = 0.01; 
Jm = 0.01; 
b  = 0.1;  


A = [-Ra/La   -Ke/La   0;
      Kt/Jm   -b/Jm    0;
      0        1       0];


B = [1/La; 
     0; 
     0];


C = [0 1 0; 
     0 0 1];


D = [0; 
     0];


sys = ss(A,B,C,D);


sys


figure;
step(sys);
title('Respuesta del Motor DC (espacio de estados)');
