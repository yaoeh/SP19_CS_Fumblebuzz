%https://www.youtube.com/watch?v=L_-iY99-ePQ

Cf_Sweep= Cf*(0.001:0.001:1);
numExperiments= length(Cf_Sweep);

for i= numExperiments:-1:1
    in(i)=Simulink.SimulationInput('sldemo_suspn_3dof');
    in(i)=in(i).setBlockParameter('sldemo_suspn_3dof/Road-Suspension Interaction','MaskValues',{'Kf',num2str(Cf_Sweep(i)),'Kr','Cr'});
end

out= parsim(in);