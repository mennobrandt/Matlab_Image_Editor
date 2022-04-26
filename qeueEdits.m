function[commandList] = qeueEdits()
    % Reads the edits the user wants to perform.
    % Makes sure that the commands and valid, and not repeated. 
    validCommands = ["flip-hor","flip-vert","invert-colours","resize"];
    commandList = {};

    % Loop that constructs & shows a message of available commands to user.
    displayCommands = "";
    for i = 1:length(validCommands)
        if i ~= 1
            displayCommands = displayCommands + ", " + validCommands(i);
        else
            displayCommands = displayCommands + validCommands(i);
        end
    end
    fprintf("\nAvailable Commands: %s\n",displayCommands);
    fprintf("Enter commands one-by-one, and type 'done' when finished.\n");

    qNum = 0; % Keep track of what command is being inputted. 
    while true
        % Format message and ask user for command(s) to queue. 
        qNum = qNum + 1;
        instruction = sprintf("    %d. Enter Command: ",qNum);
        command = input(instruction,"s");
        % Validate whether the command exists, and is not a duplicate. 
        if any(ismember(command,validCommands)) && ~all(ismember(command,commandList))
            commandList = [commandList,command]; % Add the user's command to a list of them. 
            disp("      Successfully added to queue .")
        elseif any(ismember(command,validCommands)) && all(ismember(command,commandList))
            disp("      Invalid command. Already in queue.");
            qNum = qNum - 1; % Stays on the same command number.  
        elseif command == "done"
            disp("      Performing edits...")
            return; % Exit While loop
        else
            disp("      Invalid command. Please refer to list.");
            qNum = qNum - 1; % Stays on same command number. 
        end
    end
end
