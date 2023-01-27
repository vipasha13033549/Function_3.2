# Function_3.2

remind_me <- function() {
  errands <- c("pay rent", "file taxes", "get milk", "get flour")
  print(errands)
  call <- c("Ash", "Mona", "Mom", "Dad", "Gargi", "Stephen")
  print(call)
  
}
remind_me()


cheat <- function(cheat_code) {
  if (cheat_code == 12){
    print(getSymbols("ADANIENT.NS", src = "yahoo"),
          ADANI_plot <- chart_Series(ADANIENT.NS, type = "candlesticks", chartTheme("black"), 
                                     up.col = "red",
                                     dn.col = "peach",
                                     subset = "2022"),
          ADANI_plot)
  }
  else if (cheat_code == 3) {
    data_Q3 <- titanic_train
    titanic_train$Survived[titanic_train$Survived == 0] <- "dead"
    titanic_train$Survived[titanic_train$Survived == 1] <- "alive"
    
    plot_Q3 <- ggplot(titanic_train, 
                      aes(fill = factor(Survived,levels = c("dead", "alive")),
                          x = Sex)) +
      geom_bar() +
      labs(fill = "How did it go?")
    plot_Q3
  }
  else if (cheat_code == 16) {
    Q_16_matrix <- matrix(1:9, nrow = 3, byrow = TRUE) * (1:3)
    print(Q_16_matrix)
    
  }
}



#Q3.2.2
