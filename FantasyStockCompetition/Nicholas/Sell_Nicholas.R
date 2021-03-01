library(tidyr)
library(purrr)
library(jsonlite)
library(stringr)
library(dplyr)
library(lubridate)


MarketData <- read.csv(file = "data/profile_20210223.csv")

Dataset <- MarketData %>% select(shares.symbol) %>% rename(Ticker = "shares.symbol")


API_BUY <- function(Ticker){
    x <- str_glue(
        "https://bigdataforall.com/stocks/?",
        "key=pogba&tiingo_key=bb4ce17dee09aa67599085bde6f6c0e420aa5d5f",
        "&request=buy&symbol={Ticker}&quantity=6",
        sep = ""
    )
    return(x)
}

API_SELL <- function(Ticker){
    x <- SellURL <- str_glue(
        "https://bigdataforall.com/stocks/?",
        "key=pogba&tiingo_key=bb4ce17dee09aa67599085bde6f6c0e420aa5d5f",
        "&request=sell&symbol={Ticker}&quantity=1",
        sep = ""
    )
    return(x)
}


# Dataset <- Dataset %>% 
#     mutate(API_BUY = Ticker %>% map_chr(API_BUY), 
#            API_SELL = Ticker %>% map_chr(API_SELL)) %>% 

Dataset <- Dataset %>% 
    mutate(API_SELL = Ticker %>% map_chr(API_SELL))

loop_vector <- Dataset %>% pull(API_SELL) %>% c()

# buy_data <- fromJSON(BuyURL, flatten = TRUE)

# sell_url <- fromJSON(SellURL, flatten = TRUE)

#BUY
# for (tckr in loop_vector) {
#     x <- fromJSON(tckr)
#     print(tckr)
#     print(x)
#     Sys.sleep(30)
# }

#SELL
for (tckr in loop_vector) {
    x <- fromJSON(tckr)
    print(tckr)
    print(x)
    Sys.sleep(30)
}




