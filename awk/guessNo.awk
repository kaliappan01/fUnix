#!/usr/bin/awk

BEGIN{
srand(42)   # why 42? :) that's the answer to the ultimate question of life, universe and everything 
randomNo = int(rand()*100)+1
 print "the random number is ",randomNo
printf "guess a number between 1 and 100\n"
}
### the BEGIN block runs before taking input 
### the loop in awk just happens ! 

{
guess = int($0)
}
guess<randomNo{
printf "too low, try again : "
}
guess > randomNo{
printf "too high, try again : "
}
guess == randomNo{
printf "that's right\n"
exit
}
