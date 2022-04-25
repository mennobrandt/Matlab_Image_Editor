function [newImage] = flipHorizontal(tempImage)
    % Flips an image horizontally by reversing the columns
    [oldRows,oldCols] = size(tempImage);
    newImage = [];
    for i = 1:oldRows
        imageRow = [];
        for j = 1:oldCols
            imageRow = [tempImage(i,j),imageRow];
        end
        newImage = [newImage;imageRow];
    end
end
