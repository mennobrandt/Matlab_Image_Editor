function[newImage] = scaleImage(image)
    % Changes images resolution through "Nearest Neighbour" scaling
    % Method idea/pseudocode found from this: https://www.youtube.com/watch?v=AqscP7rc8_M&t=133s
    [oldRows,oldCols] = size(image);
    % Display current resolution
    fprintf("Current resolution: %d (width) x %d (height)\n",oldCols,oldRows);
    
    % Read and verify new width (no. of columns).
    newCols = input("Enter new width (pixels): ");
    while newCols <= 0
        newCols = input("Invalid entry. Re-enter width: ");
    end
    
    % Read and verify new height (no. of rows)
    newRows = input("Enter new height (pixels): ");
    while newRows <= 0
        newRows = input("Invalid entry. Re-enter height:  ");
    end

    % Define ranges for interpolation. Vectors must be same size (length).
    oldRowRange = 1:oldRows;
    newRowRange = linspace(1,newRows,oldRows); % incremented from 1-->new resolution
    
    oldColRange = 1:oldCols;
    newColRange = linspace(1,newCols,oldCols);

    newImage = []; % Declare blank matrix for scaled image
    for i = 1:newRows
        neighbourRow = round(interp1(newRowRange,oldRowRange,i)); % Map the new image's row index, onto the old one
        imageRow = []; 
        for j = 1:newCols
            neighbourCol = round(interp1(newColRange,oldColRange,j)); % Map new image's current column index, onto the old one
            imageRow = [imageRow,image(neighbourRow,neighbourCol)];
        end
        newImage = [newImage;imageRow];
    end
end
