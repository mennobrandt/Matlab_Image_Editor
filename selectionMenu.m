function[commandList] = selectionMenu()
    % Reads the edits the user wants on their image
    validCommands = ["flip-hor","flip-vert","invert-colours","resize"];
    commandList = [];

    displayCommands = "";
    for i = 1:length(validCommands)
        if i ~= 1
            displayCommands = displayCommands + ", " + validCommands(i);
        else
            displayCommands = displayCommands + validCommands(i);
        end
    end
    fprintf("\nAvailable Commands: %s\n",displayCommands);
    fprintf("Type 'done' when finished.\n")

    while true % Ask user for commands, until they quit. m
        currentCmd = input("    Enter command: ","s");
        valid = false;
        for j = 1:length(validCommands)
            if strcmp(currentCmd,validCommands(j))
                if ~ismember(currentCmd,commandList) % Has the command already been entered? 
                    valid = true;
                end
            elseif strcmp(currentCmd,"done")
                return;
            end
        end
    
        if valid == true
            commandList = [commandList,currentCmd];
            disp("      Successfully added to que.");
        else
            disp("      Unrecognised command/already entered");
        end
    end
end
