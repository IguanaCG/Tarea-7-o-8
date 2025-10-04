function dx = siselect(t, x, u)
    Ra = 2;
    La = 0.023;
    Kt = 0.01;
    Ke = 0.01;
    Jm = 0.001;
    b = 0.0012;
    
    i = x(1);      
    w = x(2);     
    teta = x(3);       
    
   
    ip = -(Ra/La)*i - (Ke/La)*w + (1/La)*u
    wp = (Kt/Jm)*i - (b/Jm)*w
    tetap = w
    
   
    dx = zeros(3, 1);
    dx(1) = ip;    
    dx(2) = wp;  
    dx(3) = tetap;      
end