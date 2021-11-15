function []=PlotState(c1_F_ROM_new,c1_StateData_displacement_ROM_new,c2_F_ROM_new,c2_StateData_displacement_ROM_new,c3_F_ROM_new,c3_StateData_displacement_ROM_new,c4_F_ROM_new,c4_StateData_displacement_ROM_new,c5_F_ROM_new,c5_StateData_displacement_ROM_new,c6_F_ROM_new,c6_StateData_displacement_ROM_new,c7_F_ROM_new,c7_StateData_displacement_ROM_new,c8_F_ROM_new,c8_StateData_displacement_ROM_new,c9_F_ROM_new,c9_StateData_displacement_ROM_new,c10_F_ROM_new,c10_StateData_displacement_ROM_new,c11_F_ROM_new,c11_StateData_displacement_ROM_new,c12_F_ROM_new,c12_StateData_displacement_ROM_new,c13_F_ROM_new,c13_StateData_displacement_ROM_new,c14_F_ROM_new,c14_StateData_displacement_ROM_new,c15_F_ROM_new,c15_StateData_displacement_ROM_new,c16_F_ROM_new,c16_StateData_displacement_ROM_new,c17_F_ROM_new,c17_StateData_displacement_ROM_new,c18_F_ROM_new,c18_StateData_displacement_ROM_new,c19_F_ROM_new,c19_StateData_displacement_ROM_new,c20_F_ROM_new,c20_StateData_displacement_ROM_new,c21_F_ROM_new,c21_StateData_displacement_ROM_new,c22_F_ROM_new,c22_StateData_displacement_ROM_new,c23_F_ROM_new,c23_StateData_displacement_ROM_new,c24_F_ROM_new,c24_StateData_displacement_ROM_new,c25_F_ROM_new,c25_StateData_displacement_ROM_new,c26_F_ROM_new,c26_StateData_displacement_ROM_new,c27_F_ROM_new,c27_StateData_displacement_ROM_new,c28_F_ROM_new,c28_StateData_displacement_ROM_new,c29_F_ROM_new,c29_StateData_displacement_ROM_new,c30_F_ROM_new,c30_StateData_displacement_ROM_new,c31_F_ROM_new,c31_StateData_displacement_ROM_new,c32_F_ROM_new,c32_StateData_displacement_ROM_new,c33_F_ROM_new,c33_StateData_displacement_ROM_new,c34_F_ROM_new,c34_StateData_displacement_ROM_new,c35_F_ROM_new,c35_StateData_displacement_ROM_new)
figure
for jk = 1:35
    dataset = [];
    dataset_name=strcat('c',num2str(jk),'_StateData_displacement_ROM_new');
    dataset = eval(dataset_name);
    tempset = dataset(:,1:400);
    
    
    t = (0:0.02:7.98)';
    tMat = repmat(t, 1, 10); %// For plot3
    tempset = tempset';
    
    index = 1:1:10;
    indexMat = repmat(index, numel(t), 1); %//For plot3
    plot3(tMat, indexMat, tempset(:,1:10)); %// Make all traces blue
    grid;
    xlabel('Time (ms)'); ylabel('POD index'); zlabel('POD scores of displacement');
    view(40,40); %// Adjust viewing angle so you can clearly see data
    hold on
end
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',16)