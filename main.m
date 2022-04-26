% MATLAB Image Editor by Menno Brandt (a1849852)
clc;
clear all;

% Open the file browser, and let the user select an image. 
[image,filepath,imageName] = openFile(); 
% Read and qeue the edits the user wants to perform.
commandList = qeueEdits();
% Perform the edits, through calling the necessary functions. 
editedImage = executeEdits(commandList,image); 
% When edits are done, overwrite the old image with the new one. 
constructImage(editedImage,filepath,imageName);
