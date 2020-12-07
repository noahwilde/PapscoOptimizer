clc
clear


odds = input('!odds: ');
startingBet = input('Starting balance: ');
risk = input('risk tolerance (in decimal % wins ie .99 is 99% success rate): ');
disp('these next two just put at what it suggests or play around with values if you want')
error = input('allowable error (default .01, in decimal % ie .02 means the program will terminate if starting bet yields within .02 of risk tolerance): ');
size = input('simulation size (use 1000 if unsure): ');

betsIndex = 1;

wins = 0;
losses = 0;
initialBet = round(startingBet*(1-risk));
complete = 1;
delta = round(.01*startingBet);
if delta == 0
   delta = 1; 
end

debug = 0;
results = zeros(14,1); 
   
while complete < 15
wins = 0;
losses = 0;
  
%run "size" simulations    
for index = 1:size
start = startingBet;
current = start;
flag = 0;  
betSize = initialBet;


while current > 0 && flag == 0 && current >= betSize

flip = randi(100,1,1);
debug = debug + 1;

    if flip > odds
        current = betSize + current;
        flag = 1;
    else 
        current = current - betSize;
        betSize = 2*betSize;
    end


end

if current > start
    wins = wins + 1;
elseif current < start
    losses = losses + 1;
end
    
end

ratio = wins/size;
if ratio <= risk + error && ratio >= risk - error
    results(complete) = initialBet;
    complete = complete + 1;
end

 Bets(betsIndex) = initialBet;
 if complete > 1
 Succ(betsIndex) = results(complete-1);
 end
 betsIndex = betsIndex + 1;

if ratio > risk
    initialBet = initialBet + delta;
elseif ratio < risk && initialBet-delta > 0
    initialBet = initialBet - delta;
end

 if delta >2
     %delta = round(delta - .01*delta);
 end

end
disp('Optimal bet is')
disp(round(mean(results)))
% plot(1:1:length(Bets),Bets) %uncomment to display plots showing all
% attempted guess and successful attempted guesses
% hold on
% plot(1:1:length(Bets),Succ)

