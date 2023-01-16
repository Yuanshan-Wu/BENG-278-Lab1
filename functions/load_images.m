function [imgs]=load_images(fld_name)
%load_images loads in images of the same scan type (multiple realizations)
%   This enables averaging of estimates

% Determine number of subfolders
subfld = dir2(fld_name);

for j=1:numel(subfld)
    subfld_name = [fld_name '/' subfld(j).name];
    dcm_files=dir2(subfld_name)
    
    for k=1:numel(dcm_files)
        imgs(:,:,j,k)=dicomread([subfld_name]);
    end
    
end

