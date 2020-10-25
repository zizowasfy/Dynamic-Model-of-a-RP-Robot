function [q1p,q2p,dq1p,dq2p,ddq] = DynamicsPlot(q1_0,q2_0,dq1_0,dq2_0,U,n,D,C,G)

%     q1_0 = pi/3;
%     q2_0 = 0.5;
%     dq1_0 = 0;
%     dq2_0 = 0;
%     dt=0.01;
%     U = [0;0];
%     n=500;

    dt=0.01;
    for i = 1:n

         q1p(i)=q1_0;
         q2p(i)=q2_0;
         dq1p(i)=dq1_0;
         dq2p(i)=dq2_0;
         ddq(:,i) = inv(D(q1_0, q2_0))*(U-C(q1_0, q2_0,dq1_0,dq2_0)-G(q1_0,q2_0));
%          ddq(2,i) = 0;
         dq1_0=dq1p(i) + double(ddq(1,i)*dt);
         dq2_0=dq2p(i) + double(ddq(2,i)*dt);

         q1_0 = q1p(i) + dq1_0*dt;
         q2_0 = q2p(i) + dq2_0*dt;



    end
 