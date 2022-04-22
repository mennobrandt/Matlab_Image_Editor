% MATLAB Image Editor
% Only compatible with black and white images
clc;
clear;

disp("Welcome to the MATLAB Image Editor");
begin = input("Type 'y' to open a file, or 'n' to quit: ","s");

while begin ~= "y" && begin ~= "n"
    begin = input("Invalid. Please re-enter choice: ","s");
end

if begin == "n"
    disp("Program exited...")
    return; % Exits the program
else
    [filePath,image,imageName,rows,cols] = openFile();
    %newImage = scaleImage(image,rows,cols);
    selectionMenu(); % Edits to perform on the image. 
end
