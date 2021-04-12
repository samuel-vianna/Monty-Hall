
jogo <- function (){
  portas <- c(1,2,3)
  
  premio <- sample(portas, 1)
  chute  <- sample(portas, 1)
  
  if(premio == chute){
    portas <- portas[-which(portas == chute)]
    
    porta_aberta <- sample(portas,1)
    
    portas <- portas[-which(portas == porta_aberta)]
  } else {
    portas <- premio
  }  
  
  return(premio == portas)
  
}


r <- replicate(100, mean(replicate(100, jogo())))

hist(r)

t.test(r, mu = 2/3)
