%HI_LO plays the game with this name.
%    When prompted enter your guess, the computer
%    will tell you if your guess is above or below
%    the random number calculated by the computer.

x = fix(100*rand);
n = 7;
test = 1;
for k = 1:7
    numb = int2str(n);
    disp([ 'You have right to ' numb ' guesses' ])
    disp([ 'A guess is a number between 0 and 100'])
    guess = input('Enter your guess ')
    if guess < x
            disp('Low')
    elseif guess > x
            disp('High')
    else
            disp('You won')
            test = 0;
            break
    end
    n = n - 1;
end
if test > 0
    disp('You lost')
    disp(['The number is ' int2str(x)])
end
