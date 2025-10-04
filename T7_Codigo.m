t_span = [0 10]; 

x0 = [0; 0; 0]; 

u = 1; 

[t, x] = ode45(@(t,x) siselect(t, x, u), t_span, x0);

corriente = x(:,1);      
velocidad_ang = x(:,2);  
posicion_ang = x(:,3);   

figure('Name','Corriente de Armadura'); 
plot(t, corriente, 'b-', 'LineWidth', 2);
title('Corriente de Armadura (i_a)');
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
grid on;


figure('Name','Velocidad Angular'); 
plot(t, velocidad_ang, 'r-', 'LineWidth', 2);
title('Velocidad Angular (\omega_m)');
xlabel('Tiempo (s)');
ylabel('Velocidad (rad/s)');
grid on;


figure('Name','Posición Angular'); 
plot(t, posicion_ang, 'g-', 'LineWidth', 2);
title('Posición Angular (\theta_m)');
xlabel('Tiempo (s)');
ylabel('Posición (rad)');
grid on;