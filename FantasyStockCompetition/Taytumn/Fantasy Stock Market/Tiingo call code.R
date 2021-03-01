# Tiingo Token

TIINGO_TOKEN = "2db57b4ec1957026c97b4084adb8890446c30fb7"
MINUTES_6HRS = 360


# Load Libraries

library(jsonlite)
library(cronR)

base <- "https://api.tiingo.com/tiingo/crypto/prices?"
symbol <- ""
url <- paste(base, "token=", TIINGO_TOKEN, "&tickers=", symbol, "&resampleFreq=1min", sep="")


# Grab Price

e <- 1
repeat{
  
  # Get the raw JSON data
  jsonPricesRaw <- fromJSON(url)
  
  # Extract the price data to a data frame
  prices <- jsonPricesRaw$priceData
  
  #Getting latest data (last row)
  currentPrice <- tail(prices[[1]], 1)
  
  
  
  
  #Loop 
  e <- e+1
  if (e >= MINUTES_6hrs){
    break
  }
  Sys.sleep(60)
}


# code for buy
https://bigdataforall.com/stocks/?key=YOUR_KEY&tiingo_key=YOUR_TIINGO_KEY&request=buy&symbol=GME &quantity=5
# code for sell
https://bigdataforall.com/stocks/?key=YOUR_KEY&tiingo_key=YOUR_TIINGO_KEY&request=sell&symbol=GME &quantity=3
