
% Delay function from 
% https://www.mathworks.com/matlabcentral/answers/37716-pause-function-in-matlab-for-1-millisecond

function delay(seconds)
% function pause the program
% seconds = delay time in seconds
tic;
while toc < seconds
end
end