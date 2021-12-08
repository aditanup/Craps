% Coded by Group Q

% Create object that displays a window containing Craps rules to the user
rules = imread('crapsRules.png');
image(rules);

pause(10);

% Instantiate simpleGameEngine object
my_scene = simpleGameEngine('retro_simple_dice.png', 16,16,4);

% 'Generate' the initial roll
roll = randi(6,1,2);
drawScene(my_scene, roll)
sumRoll = sum(roll);

%If statements to check the first game

%win Condition, first roll
if sumRoll == 7 || sumRoll == 11
    % Print win to console
    fprintf("\nyou win\n")

% lose Condition, first roll
elseif sumRoll == 2 || sumRoll == 3 || sumRoll == 12 
    % Print lose to console
    fprintf("\nyou lose\n")
% Else statement for the second+ rolls, only if needed.
else 
    sumRoll2 = 0;
    % looping construct that allows for multiple rolls to conducted if 
    % necessary
    while(sumRoll2 ~= sumRoll || sumRoll2 ~= 7)
        my_scene2 = simpleGameEngine('retro_simple_dice.png', 16,16,4);
        roll2 = randi(6,1,2);
        delay(1);
        drawScene(my_scene2, roll2)
        sumRoll2 = sum(roll2);
        
        %Win condition for the second roll
        if(sumRoll2 == 7)
                % Print lose to console
            fprintf("\nyou lose\n")

            break;
        % lose condition for the second roll
            % Print win to console
        elseif sumRoll2 == sumRoll
            fprintf("\nyou win\n")

            break;
        end
    end
end







