function[commandList] = selectionMenu()
    % Reads the edits the user wants on their image
    validCommands = ["flip-hor","flip-vert","invert-colours","resize"];
    commandList = [];

    dispCommands = "Available commands: ";
    % This loop formats a string that shows the valid edits users can
    % perform on the image. They are self-explanatory.

    %{ Should format msg w commands, but doesn't
    for i = 1:length(validCommands)
        append(dispCommands, ' ',validCommands(i));
    end
    fprintf("%s",dispCommands);

    while true % Ask user for commands, until they quit. 
        currentCmd = input("Enter command, or 'done' to quit: ","s");
        valid = false;
        for j = 1:length(validCommands)
            if strcmp(currentCmd,validCommands(j))
                valid = true;
                validCommands(i) = [];
            elseif strcmp(currentCmd,"done")
                return;
            end
        end
    
        if valid == true
            commandList = [commandList,currentCmd];
            disp("Successfully added.");
        else
            disp("Invalid Command/Already entered.");
        end
    end
end