function[commandList] = selectionMenu()
    % Reads the edits the user wants on their image
    validCommands = ["flip-hor","flip-vert","invert-colours","resize"];
    commandList = {};

    % Loop that constructs and shows a message of available commands
    displayCommands = "";
    for i = 1:length(validCommands)
        if i ~= 1
            displayCommands = displayCommands + ", " + validCommands(i);
        else
            displayCommands = displayCommands + validCommands(i);
        end
    end
    fprintf("\nAvailable Commands: %s\n",displayCommands);
    fprintf("Type 'done' when finished.\n");

    qNum = 0;
    while true
        % Format message and ask user for command(s) to queue. 
        qNum = qNum + 1;
        instruction = sprintf("    %d. Enter Command: ",qNum);
        command = input(instruction,"s");
        % Validate whether the command is valid, or a duplicate
        if any(ismember(command,validCommands)) && ~all(ismember(command,commandList))
            commandList = [commandList,command];
            disp("      Successfully added to queue .")
        elseif any(ismember(command,validCommands)) && all(ismember(command,commandList))
            disp("      Invalid command. Already in queue.");
            qNum = qNum - 1; % Stay on same command number.
        elseif command == "done"
            disp("      Exiting...")
            return; % Exit While loop
        else
            disp("      Invalid command. Please refer to list.");
            qNum = qNum - 1;
        end
    end
end
