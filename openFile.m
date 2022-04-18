function[fullImgPath,uploadedImg,imgName,numRows,numCols] = openFile()
    % Uses MATLAB GUI to select an image file
    [imgName,path] = uigetfile("*.jpg;*.png;*.tff","Select Image");
    fullImgPath = fullfile(path, imgName); % Stitches the director and filename together

    uploadedImg = imread(fullImgPath);
    [numRows,numCols] = size(uploadedImg); % Assign image dimensions
end