Nisin = [0 100 150 200];
Salt = [0 5 6.5 8.5];
pH = [5.0 5.2 5.5 5.8];
Num_Spore = [10 150 300];
[ndgridpH,ndgridSalt,ndgridNum_Spore,ndgridNisin] = ndgrid(pH,Salt,Num_spore,Nisin);
[ndgridNisin(:),ndgridpH(:),ndgridNum_Spore(:),ndgridSalt(:)]
filename = 'data.xlsx';
T = array2table(ans,'VariableNames',{'Nisin','pH','NumberofSpore','Salt'});
writetable(T,filename,'Sheet',1,'Range','A1')

