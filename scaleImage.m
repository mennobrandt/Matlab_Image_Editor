function[newImage] = scaleImage(tempImage)
    % Changes images resolution through "Nearest Neighbour" scaling
    % Method idea found from this Computerphile video: https://www.youtube.com/watch?v=AqscP7rc8_M&t=133s

    %{
        Basic summary of program:
            - The user inputs the new width (columns) and height (rows) of
              the image. 
            - We then iterate through each entry in the new image's matrix, 
              and find its corresponding index in the old image's matrix. 
              (The pixel that most closely matches the relative position).
              To do so, we map/interpolate both the new row index, and the
              new column index, on to the old ones, and then make the
              values equal. 
            - Here is a diagram: http://tech-algorithm.com/uploads/nneighbor01.png
    %}

    [oldRows,oldCols] = size(tempImage);
    % Display current resolution
    fprintf("\nCurrent resolution: %d (width) x %d (height) pixels\n",oldCols,oldRows);
    
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
            imageRow = [imageRow,tempImage(neighbourRow,neighbourCol)]; % Populate a row with these new values. 
        end
        newImage = [newImage;imageRow]; % Populate the newImage matrix with the scaled rows (imageRow). 
    end
end
