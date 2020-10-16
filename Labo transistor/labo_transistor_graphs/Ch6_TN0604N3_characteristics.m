clear; 
clc; 
close all; 

%% Circuit values
R = 100; 

% TN0604N3-G-ND transistr
Vth = 0.6;


vGS_range = [0:0.050:2];
vDS_range = [0:0.100:5];

%% Secundary parameters

gm = 800e-3; % pour vDS = 20V et iD = 1.5A
knWL = gm^2/(2*1.5); 

% % Reverse-engineered from experiment
% knWL = 0.050/(1.4-Vth)^2

%% Circuit I-V characteristics

cpt_vGS = 0;
for vGS = vGS_range
    cpt_vGS = cpt_vGS+1
    cpt_vDS = 0;
    for vDS = vDS_range
        cpt_vDS = cpt_vDS+1;
        if (vGS < Vth)
            iD(cpt_vGS,cpt_vDS) = 0;
            gm(cpt_vGS) = 0;
        elseif (vDS < vGS-Vth)
            iD(cpt_vGS,cpt_vDS) = knWL*((vGS-Vth)*vDS-1/2*vDS.^2);
        else
            iD(cpt_vGS,cpt_vDS) = 1/2*knWL*((vGS-Vth).^2);
            gm(cpt_vGS) = knWL*(vGS-Vth);
        end
    end
end
    


%% Plot results

figure; hold on; grid on;
for cpt_vGS = 1:3:length(vGS_range)
    plot(vDS_range,iD(cpt_vGS,:), 'b-', 'LineWidth',2);
end
xlabel('v_{DS} (V)'); ylabel('i_D (A)'); 

figure; hold on; grid on; 
plot(vGS_range, iD(:,end), 'b-', 'LineWidth',2);
xlabel('v_{GS} (V)'); ylabel('i_D (A)'); 

figure; hold on; grid on; 
plot(vGS_range, gm(:), 'b-', 'LineWidth',2);
xlabel('v_{GS} (V)'); ylabel('g_m (S)'); 

