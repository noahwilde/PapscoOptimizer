# PapscoOptimizer
Optimize Papsco Points betting

It will ask for a few inputs:

!odds
Do !odds in chat and throw in whatever value it says. Usually 55 or 50 for subs. Sometimes better if a sub goal has been met.

Starting balance
This is whatever your current balance is. Do !points in chat to check

Risk tolerance
This is the percent success rate the program will shoot for. For example, if you want to successfully double down until you win and avoid losing all your point 95% of the time, put in 0.95. Ideally you would win 100% of the time, but it is gambling. The lower the percent, the higher the risk and the reward. 80% is probably good if youre pretty broke, 90% if you have a few hundred thousand, higher if you have even more points. 

Allowable error
This is how close the program needs to get to your risk to consider it close enough. For example, if you put .92 as your risk tolerance, it may be impossible to get exactly that. Making the allowable error .01 would allow the program to complete between .91 and .93. .01 is usually a good default, however it can be increased if you find that the program takes too long to run, or if in never finishes. 

Simulation size
This is the number of simulations that will be run per guess for your initial bet. For example, it will run 1000 simulations at one guess, see of the guess was too high or too low, adjust accordingly and try again. This will continue until the starting bet guess is within the error for your risk tolerance. 1000 is a decent number to go with. 100 will speed up the program but could be potentially less accurate, 10000 might be more accurate but slower.

Whatever bet is output is the best best to start gambling with! Make the bet. If you win, congrats! If you lose, double the bet and try again. Continue to double until you win. The bet will be sized such that you should be able to continue doubling until you win, accoring to your risk tolerance. 


A few extra notes:
The last few lines have some plot commented out. These plots show all attempted guesses and all successful guesses if you want to see that. A lot of the code can be messed around with to see how the behavior changes. Any questions, just let me know. @nwilde1590
