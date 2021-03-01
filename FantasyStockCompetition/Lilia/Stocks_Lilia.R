library(tidyr)
library(jsonlite)
library(stringr)
library(dplyr)
library(lubridate)
library(purrr)


MarketData <- read.csv(file = "data/Feb22ok.csv")

Dataset <- MarketData %>% select(Ticker) 


API_BUY <- function(Ticker){
    x <- str_glue(
        "https://bigdataforall.com/stocks/?",
        "key=henry&tiingo_key=f155f16469de354685f6b6d9078fd4b0839b0d39",
        "&request=buy&symbol={Ticker}&quantity=1",
        sep = ""
    )
    return(x)
}

API_SELL <- function(Ticker){
    x <- SellURL <- str_glue(
        "https://bigdataforall.com/stocks/?",
        "key=henry&tiingo_key=f155f16469de354685f6b6d9078fd4b0839b0d39",
        "&request=sell&symbol={Ticker}&quantity=2",
        sep = ""
    )
    return(x)
}

## BUY PART  ##

##Dataset <- Dataset %>% 
   ##mutate(API_BUY = Ticker %>% map_chr(API_BUY), 
     ##     API_SELL = Ticker %>% map_chr(API_SELL))

##loop_vector <- Dataset %>% pull(API_BUY) %>% c()

# buy_data <- fromJSON(BuyURL, flatten = TRUE)

# sell_url <- fromJSON(SellURL, flatten = TRUE)

#BUY
##for (tckr in loop_vector) {
##    json <- fromJSON(tckr)
##    print(tckr)
##    print(json)
##    Sys.sleep(30)
##}

## SELL PART 
Dataset <- Dataset %>% 
    mutate(API_BUY = Ticker %>% map_chr(API_BUY), 
           API_SELL = Ticker %>% map_chr(API_SELL))

loop_vector <- Dataset %>% pull(API_SELL) %>% c()

# buy_data <- fromJSON(BuyURL, flatten = TRUE)

# sell_url <- fromJSON(SellURL, flatten = TRUE)

#SELL
for (tckr in loop_vector) {
    json <- fromJSON(tckr)
  print(tckr)
    print(json)
    Sys.sleep(30)
}

#Feb18 <- fromJSON("https://bigdataforall.com/stocks/?key=henry&tiingo_key=f155f16469de354685f6b6d9078fd4b0839b0d39&request=profile")
#Feb18

#write.csv(x = Feb18, file = "Feb18.csv", row.names = TRUE)
#write.table(x = Feb18, file = "C:/Users/lilir/Desktop/STU/6 DATA MINING/Rfiles DataMining/Feb18.csv", append = TRUE, sep = ",", row.names = FALSE, col.names = FALSE)

#Feb22 <- fromJSON("https://bigdataforall.com/stocks/?key=henry&tiingo_key=f155f16469de354685f6b6d9078fd4b0839b0d39&request=profile")
#Feb22

#write.csv(x = Feb18, file = "Feb22.csv", row.names = TRUE)
#write.table(x = Feb18, file = "C:/Users/lilir/Desktop/STU/6 DATA MINING/Rfiles DataMining/Feb22.csv", append = TRUE, sep = ",", row.names = FALSE, col.names = FALSE)
