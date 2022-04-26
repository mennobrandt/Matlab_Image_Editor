function[newImage] = invert(tempImage)
    % Invert an image's colours. (Black becomes white, white becomes black)
    [oldRows,oldCols] = size(tempImage);

    newImage = [];
    for i = 1:oldRows
        imageRow = []; % Clear current row
        for j = 1:oldCols
            % Assumption is made that image is uint8, and uses pixel vals-
            % ranging from 1-255
            oldVal = tempImage(i,j);
            newVal = abs(255-oldVal); % Invert/reverse value
            imageRow = [imageRow,newVal];
        end
        % Append row with inverted pixel values to newImage matrix
        newImage = [newImage;imageRow]; 
    end
end
