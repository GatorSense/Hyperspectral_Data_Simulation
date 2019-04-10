function [] = plotSpectra(targets)

lineWidth = 1.5;

figure();
plot(targets(:,1)', 'LineWidth', lineWidth);
hold on;
plot(targets(:,2)', 'LineWidth', lineWidth);
hold on;
plot(targets(:,3)', 'LineWidth', lineWidth);
hold on;
plot(targets(:,4)', 'LineWidth', lineWidth);
axis([0 212 0 0.035]);
ylabel('Reflectance');
xlabel('Wavelength (\mum)');
xticklabels({'.4','.6','.8','1','1.2','1.4','1.6', '1.8', '2', '2.2', '2.4'});
legend({'Red Slate','Verde Antique', 'Phyllite', 'Pyroxenite'});
title('True Spectra');

end