function [newImage] = flipVertical(tempImage)
    % Flips an image vertically
    oldRows = size(tempImage,1); % No need to read oldCols. 
   
    newImage = []; % Blank matrix to populate with flipped rows
    for i = 1:oldRows
        % Incrementally prepends rows of tempImage, to populate newImage
        % matrix. 
        newImage = [tempImage(i,:);newImage]; % ':' gets all entries in current row 'i'. 
    end
end