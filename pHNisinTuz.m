Nisin = [0 200 300 400];
Tuz = [0 1.0 1.5 2.5];
pH = [5.0 5.2 5.5 5.8];
Spor_say = [10 150 300];
[ndgridpH,ndgridTuz,ndgridSpor_say,ndgridNisin] = ndgrid(pH,Tuz,Spor_say,Nisin);
[ndgridNisin(:),ndgridpH(:),ndgridSpor_say(:),ndgridTuz(:)]
filename = 'data.xlsx';
T = array2table(ans,'VariableNames',{'Nisin','pH','SporSayisi','Tuz'});
writetable(T,filename,'Sheet',1,'Range','A1')

