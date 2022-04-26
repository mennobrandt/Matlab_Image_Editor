function[image,filepath,imageName] = openFile()
    % Uses MATLAB GUI to select an image file
    [imageName,path] = uigetfile("*.jpg;*.png;*.tff","Select Image"); % Open file browser
    filepath = fullfile(path, imageName); % Combines the directory and filename together
    fprintf("Selected File: %s\n",imageName); % Display name of chosen file. 
    image = imread(filepath);
end
