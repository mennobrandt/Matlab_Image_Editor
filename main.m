% MATLAB (TUI) Image Editor
clc;
clear;

[filePath,image,imageName] = openFile(); % Open image to be edited.
commandList = qeueEdits(); % Read and qeue edits. 
executeEdits(commandList,image); % Execute edits. 
