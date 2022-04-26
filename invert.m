function [newImage] = flipVertical(tempImage)
    % Flips an image vertically
    oldRows = size(tempImage,1);
   
    newImage = []; % Blank matrix to populate with flipped rows
    for i = 1:oldRows
        % Incrementally prepend rows of tempImage, to populate newImage
        newImage = [tempImage(i,:);newImage]; 
    end
end
