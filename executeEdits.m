function[tempImage] = executeEdits(commandList,image)
    % Execute qeued image edits. 
    qeueSize = length(commandList);
    tempImage = image;
    for i = 1:qeueSize
        switch commandList{i} % does not check for resizing. 
            case "flip-hor" 
                tempImage = flipHorizontal(tempImage); 
            case "flip-vert"
                tempImage = flipVertical(tempImage);
            case "invert-colours"
                tempImage = invert(tempImage);
        end
    end
  
    % If 'resize' is chosen, it's performed at the end. 
    if any(ismember("resize",commandList))  
        tempImage = scaleImage(tempImage);
    end
end