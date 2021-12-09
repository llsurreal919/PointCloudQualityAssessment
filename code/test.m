%% reference point cloud 
pc_ori=pcread("pc_sample\sarah9_frame0023.ply");
pc_ori_normal=Normal_ES(pc_ori);
%% resampling point cloud 
pc_fast=pcread("pc_sample\sarah9_frame002310000_4.ply");
%% Relevant parameters
[area,r,Ref_FPFH,Dis_FPFH,sample_color_feature,sample_gem_feature]=Parameters(pc_ori,pc_fast);
color_sim=zeros(r,3);
gem_sim=zeros(r,3);
%% Point clouds with different distortion levels
for i=1:1:5
    pc_dis=pcread(strcat('pc_sample\sarah9_gpccOt_',num2str(i),'.ply'));
    %% Normal estimate
    pc_dis_normal=Normal_ES(pc_dis);
    %% Feature calculation
    [sample_color_sim,sample_gem_sim]=pc_quality_assessment(pc_ori,pc_ori_normal,pc_dis,pc_dis_normal,pc_fast,area,r,Ref_FPFH,Dis_FPFH,sample_color_feature,sample_gem_feature);
    color_sim(1:r,i)=sample_color_sim;
    gem_sim(1:r,i)=sample_gem_sim;
end
%%  objective_score calculate
objective_score=cal_mos(color_sim, gem_sim);