function [Si, Ibi] = seirbeta(beta)

mu=0.1;
alphae=0.1;
alphai=0.015;
gamma=0.015;
epsilon=0.004;
d=0.1;
    function dF = epidemic(t, x);       %set up the function to be solved in a seperate function environment
        dF = zeros(4,1);
dF(1) = -beta*x(1)*x(4)+alphai*(1-x(1)-x(2)-x(3));  %set of 4 odes, I just found them on wikipedia to then use here.
dF(2) = beta*x(1)*x(4)-epsilon*x(2);
dF(3) = epsilon*x(2)-gamma*x(3);
dF(4) = beta*(1-x(4))*x(4)-alphae*x(4)-(d+mu)*x(4);

    end
options = odeset('Refine', 10, 'RelTol', 1e-4);     %allows us to tailor ode45's options
[t,y] = ode45(@epidemic, [0 10000], [0.55 0.15 0.15 0.15], options); %call ode45 to solve the model "rigid".
Si=y(:,1);
Ibi=y(:,3);
end
