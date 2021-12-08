youWin = simpleGameEngine('Win.png',30,100);
%First parameter is the filename (must be in same folder)
%Second parameter is the height in pixels, third parameter is length

% I would create your image in Google Slides as it gives you the power to
% setup the page with a specific heigth and width in pixels (which is mandatory)
% , and then download it as a .png

youLose = simpleGameEngine('Lose.png',30,100);

drawScene(youWin, [1;1])
% Cannot remove the [1;1] parameter
drawScene(youLose,  [1;1])

