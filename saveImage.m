function[] = saveImage(newImage,filepath)
    % Saves the edited image, and overwrites the old copy. 
    imwrite(newImage,filepath); % Save image data to same filepath. 
    imshow(filepath); % Display the image. 
end
