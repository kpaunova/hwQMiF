#Task 1
i <- 0
sum <- 0
for(i in 1:1000) {
  currAmount <- 100
  currBet <- 1
  numGames <- 0
  
  while(currAmount > 0) {
    if (currAmount < currBet) currBet <- currAmount
    
    if (sample (c(0,1), 1, prob = c(0.486, 0.514)) == 0){
      currAmount <- currAmount + currBet
    }
    else{ 
      currAmount <- currAmount - currBet
      currBet <- currBet*2
    }
    
    numGames <- numGames + 1
  }
  
  sum <- sum + numGames
}

print(sum / 1000)