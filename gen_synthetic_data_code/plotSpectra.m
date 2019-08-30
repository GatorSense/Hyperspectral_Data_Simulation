function [] = plotSpectra(targets, parameters)
% Function that plots the endmember/spectra used for targets
% if parameters variable is provided it will plot the 1-2 targets selected
% versus background

spectra = table2array(targets(:,2:end));
wavelength = table2array(targets(:,1));

% Plot all targets
numSamp = size(spectra,2);
figure();
hold on
for ii = 1:numSamp
    plot(wavelength,spectra(:,ii), 'LineWidth', 1.5);
end
axis([0.4 2.5 0 0.7]);
ylabel('Reflectance');
xlabel('Wavelength (\mum)');
legend(targets.Properties.VariableNames(2:end));
title('True Spectra');
hold off

if nargin == 2
    % Plot selected targets from background
    spectraTarget = spectra(:,parameters.E_target);
    spectraBG = spectra(:,parameters.E_minus);
    numSampTarget = size(spectraTarget,2);
    numSampBG = size(spectraBG,2);
    figure();
    hold on
    for ii = 1:numSampTarget
        plot(wavelength,spectraTarget(:,ii), 'color','k', 'LineWidth', 1.5);
    end
    for ii = 1:numSampBG
        plot(wavelength,spectraBG(:,ii), 'color',[0.5 0.5 0.5], 'LineWidth', 1.5);
    end
    axis([0.4 2.5 0 0.5]);
    ylabel('Reflectance');
    xlabel('Wavelength (\mum)');
    text(2.45, 0.48, 'Target','Color','k','HorizontalAlignment','right');
    text(2.45, 0.46, 'Background','Color',[0.5 0.5 0.5],'HorizontalAlignment','right');
    title('True Spectra');
    hold off
end

end