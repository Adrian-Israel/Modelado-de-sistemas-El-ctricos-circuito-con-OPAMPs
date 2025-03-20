[t, x] = ode45(@MRA6, [0 5e-3], [0 ; 0]);

figure;
plot(t, x(:, 1)-0.19, 'b', 'LineWidth', 1.5);
grid on;
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');  
title('Respuesta del sistema RLC');
xlim([0 5e-3]); 
xticks(0:0.5e-3:5e-3); 