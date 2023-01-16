function [FWHM loc] = analyze_psf(imgA)
%function begins from here
location = find(imgA == -3024);
imgA(location) = 0;
figure;imshow(imgA,[0,255]);

max_psf = max(max(imgA));
[row,col] = find(imgA == max_psf);
figure;plot(imgA(row,:)); hold on; plot(imgA(:,col))
loc = find(round(max_psf/2)-0.1*max_psf < imgA(row,:) & imgA(row,:) < round(max_psf/2)+0.1*max_psf);
FWHM = loc(end)-loc(1);
end