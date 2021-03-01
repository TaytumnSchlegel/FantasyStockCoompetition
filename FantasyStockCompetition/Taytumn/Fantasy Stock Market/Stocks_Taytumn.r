


library(readxl)
SP500Tickers <- read.csv("SP500Tickers.csv")
library(httr)
library(jsonlite)
library(urltools)
library(lubridate)
urlrequestlist <- list("sell", "buy")
  repeat {
    
      for(j in 1:50){
        for(i in 1:length(urlrequestlist)){
          currentUrl<-paste0("https://bigdataforall.com/stocks/?key=pires&tiingo_key=2db57b4ec1957026c97b4084adb8890446c30fb7&symbol=",SP500Tickers$Ticker[j],"&quantity=1&request=",urlrequestlist[i])
          res = GET(currentUrl)
          assign(paste0("variable_",urlrequestlist[i]),res)
        }
        Sys.sleep(60)
      }
  }

# startTime <- Sys.time()
# endtime <- startTime + 1*60

# differencetime <- difftime(endtime,startTime,units="secs")
# if ( differencetime > 0)
# {
# }else
#   break
# 



