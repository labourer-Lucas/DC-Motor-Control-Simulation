time=out.tout;
Ia=out.yout{1}.Values.iA.Data;
n=9.55*out.yout{1}.Values.w.Data;
Torque_out=out.yout{1}.Values.Te.Data;
Torque_ref=out.yout{2}.Values.Data;
n_ref=out.yout{3}.Values.Data;
I_ref=out.yout{4}.Values.Data;
% figure;
% % Plot the real speed
% plot(time, n, 'b', 'LineWidth', 1);
% hold on;
% % Plot the reference speed
% plot(time, n_ref, 'r', 'LineWidth', 1);
% hold off;
% % Add labels and title
% xlabel('Time (s)');
% ylabel('Speed (rpm)');
% title('Real Speed vs Reference Speed');
% legend('Real Speed', 'Reference Speed');
% %calculate overshoot in speed responce
% n_max=max(n);
% overshoot_n=(n_max-n_ref(5,1))/n_ref(5,1)
% % Create a new figure
% figure;
% % Plot the output torque
% plot(time, Torque_out, 'b', 'LineWidth', 1);
% hold on;
% % Plot the reference torque
% plot(time, Torque_ref, 'r', 'LineWidth', 1);
% hold off;
% % Add labels and title
% xlabel('Time (s)');
% ylabel('Torque ($N\cdot m$)','Interpreter','latex');
% title('Output Torque vs Reference Torque');
% legend('Output Torque', 'Reference Torque');
figure;
plot(time, Ia,'b','LineWidth',1);
hold on;
plot(time, I_ref,'r','LineWidth',1);
xlabel('Time (s)');
ylabel('Amature Current (A)');
title('Amature current');
legend('Real current', 'Reference current');
I_max=max(Ia);
overshoot_I=(I_max-I_ref(5,1))/I_ref(5,1)