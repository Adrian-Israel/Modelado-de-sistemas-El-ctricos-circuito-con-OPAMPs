function dxdt = MRA6(t, x)
    
    R = 1000;          
    L = 0.02;          
    C = 0.1e-6;        
    V_amp = 2.66;      
    T_pwm = 1e-3;      
    D = 0.5;           

    offset = (1.52 + 1.14)/2;
    V_in = V_amp * (mod(t, T_pwm) < D * T_pwm) + (offset - V_amp/2);
   
    dxdt = [x(2); 
            (V_in - x(1) - R*C*x(2)) / (L*C)];
