function [newImage] = flipHorizontal(tempImage)
    % Flips an image horizontally by reversing the columns
    [oldRows,oldCols] = size(tempImage);
    newImage = []; % Blank image matrix to be populated. 
    for i = 1:oldRows
        imageRow = [];
        for j = 1:oldCols
            imageRow = [tempImage(i,j),imageRow]; % Prepend the old row's entries into newRow. 
        end
        newImage = [newImage;imageRow]; % Populate newImage matrix with the reversed rows. 
    end
end
