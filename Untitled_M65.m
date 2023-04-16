%  clear all
%  clc
translation_Laplacian_m = [1  -1/3  -1/3 -1/3;
                         -1/3  1    -1/3 -1/3;
                         -1/3 -1/3   1   -1/3;
                         -1/3 -1/3  -1/3  1];
                     
diagonal_matrix =  [1 0 0 0;
                    0 1 0 0;
                    0 0 1 0;
                    0 0 0 1];                  
 g = 9.81;
load mpc1.mat
load mpc1x.mat
load mpc1y.mat
A1_1 = 1;
Ix= 0.008;
Iy= 0.008;
Iz= 0.142;
m = 1;
L = 0.24;
b = 54.2e-6;
d = 1.1e-6;
I = 1.08e-6;
%omega =212.718305491

Ts=0.05;
Pos_z0 = 150;
Pos_z1 = 50;
Pos_z2 = -50;
Pos_z3 = -150;

%% UAV_and_Target_Flight_Path
figure('Name','Flight Path Diagram 3D')
plot3(X_T.Data,Y_T.Data,Z_T.Data,'Linewidth',1.5)
hold on
plot3(X_T1.Data,Y_T1.Data,Z_T1.Data,'Linewidth',1.5)

plot3(X_T2.Data,Y_T2.Data,Z_T2.Data,'Linewidth',1.5)

plot3(X_T3.Data,Y_T3.Data,Z_T3.Data,'Linewidth',1.5)

grid on
xlabel('X (m)')
ylabel('Y (m)')
zlabel('Z (m)')



%------------ plot3(X_T.Data,Y_T.Data,Z_T.Data,'r--','Linewidth',1.5)
% title('UAV and Target Flight Path 3D(Case3)')
% legend('UAV','Target')
%-------------------------------

%%----------------------------
% figure('Name','Flight Path Diagram 3D')
% plot3(X_UAV.Data,Y_UAV.Data,Z_UAV.Data,'Linewidth',1.5)
% hold on
% plot3(X_t.Data,Y_t.Data,Z_t.Data,'r--','Linewidth',1.5)
% title('UAV and Target Flight Path 3D(Case3)')
% legend('UAV','Target')
% grid on
% xlabel('X (m)')
% ylabel('Y (m)')
% zlabel('Z (m)')
%%

% open_system 'untitled22_2018b'
% sim D:\aXUXa\A1_Yan2_xia_jieyelunwen\AAA-1\qqq\untitled_ceshi.slx
% open_system 'untitled_ceshi.slx'
% get_param('Scope')
% untitled42
% sim('untitled42');
% % cd D:\aXUXa\A1_Yan2_xia_jieyelunwen\AAA-1\14
% % savepath
% % cd
% 
% figure ('Name','Heights');
% hold on,grid on
% 
% 
% plot(Z_T)
% plot(Z_T1)
% plot(Z_T2)
% plot(Z_T3)

%sim('untitled_ceshi')
% figure('Z1','Heights')
% hold on ,grid on
% plot(Z1)