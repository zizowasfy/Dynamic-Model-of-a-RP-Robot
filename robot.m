function robot(L,v)

% T_H = RotR("x",q1) * Trans("x",L1+q2+L2) * Trans("z",q3) * Trans("z",-L3);
% v  = [theta1 theta2 d3]

% figure;


% view([128.0 15.4])

T1 = RotR("z",v(1)) * Trans("x",v(2));
plot3(0,0,0,'ro','MarkerSize',5,'LineWidth', 5 , 'DisplayName' , 'Joint 0');

hold on
axis([-3 3 -5 3 -2 3])    % Question 3
% view(20,12)           % Question 3
view([0 90])
xlabel("x-axis")
ylabel("y-axis")
zlabel("z-axis")
grid on

plot3([0 T1(1,4)],[0 T1(2,4)],[0 T1(3,4)],'-b','LineWidth', 3 , 'DisplayName' , 'Link 1');
plot3(T1(1,4),T1(2,4),T1(3,4),'ro','MarkerSize',5,'LineWidth', 5 , 'DisplayName' , 'Joint 1');


T2 = RotR("z",v(1)) * Trans("x",v(2)) * Trans("x",2*L(1));
plot3([T1(1,4) T2(1,4)],[T1(2,4) T2(2,4)],[T1(3,4) T2(3,4)],'-g','LineWidth', 4 , 'DisplayName' , 'Link 2');
plot3(T2(1,4),T2(2,4),T2(3,4),'ro','MarkerSize',5,'LineWidth', 5 , 'DisplayName' , 'Joint 2');

legend;
end


