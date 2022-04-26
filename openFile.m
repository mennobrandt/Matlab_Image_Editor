function[image,filepath,imageName] = openFile()
    % Uses MATLAB GUI to select an image file
    [imageName,path] = uigetfile("*.jpg;*.png;*.tff","Select Image");
    filepath = fullfile(path, imageName); % Stitches the director and filename together
    fprintf("Selected File: %s\n",imageName);
    
    image = imread(filepath);
end
