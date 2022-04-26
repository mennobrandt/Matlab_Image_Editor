function[newImage] = invert(tempImage)
    % Invert an image's colours. (Black becomes white, white becomes black)
    [oldRows,oldCols] = size(tempImage);

    newImage = [];
    for i = 1:oldRows
        imageRow = []; % Clear current row
        for j = 1:oldCols
            % Assumption is made that image is uint8, and uses pixel vals-
            % ranging from 1-255. Will not work otherwise. 
            oldVal = tempImage(i,j); % Old pixel value. 
            newVal = abs(255-oldVal); % New reversed pixel value. 
            imageRow = [imageRow,newVal]; % Populates row with new reversed pixel values. 
        end
        % Append row with inverted pixel values to newImage matrix
        newImage = [newImage;imageRow]; 
    end
end
