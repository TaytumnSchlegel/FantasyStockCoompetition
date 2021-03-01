# Fantasy Stock Competition

## Overview 

Our job is to develop algorithmic trading models that will buy and sell stock in the market automatically. 
Our hedge fund has trusted the members of our team with $100,000 BDB with the goal of maximizing profit.

## Rules

All trading must be done from R and completely automated.

Each team member must have a script running in their own EC2 instance.

You are limited to 2 BigDataForAll calls per minute, maximum 500 BigDataForAll API calls per day.

You must make at least 250 successful trades (buy/sell) per day. Any accounts below that threshold will be penalized after the market closes that day. The penalty will be $100 per missed transaction. So if you only make 100 successful transactions in a day, you will be penalized $1,500 for the missing 150 transactions.

All trading is to be done between 9:30am-4pm.

You can only trade the same symbol 10 times per day.

At the close of each day's market, all non-invested balances with a positive amount will be set to $0.00. Therefore, to participate in the next trading day, you must sell shares before buying. 

Failed transactions will result in a $1,000BDD penalty.

Profile requests to BigDataForAll.com will be disabled during trading hours.

You will be evaluated on your research depth, machine learning algorithm complexity, and how well your trader performs (final budget) in relation to the other competitors.

## Approaches

Nick's Approach: My approach can be described in less then Five words: Failed Analyses, Desperation, Loops. Usign FinViz to grab the best gainers for the previous day. I created a simple loop to buy and sell my stocks. All other original approaches I had failed spectacularly. Originally my idea was to use a basic Formula "Close Price - Open Price Divided by Open Price". This would give me an easy way to measure gains and losses of a stock basd on the last hour or two of its history.

Lili’s approach: Our first plan was to analyze the data in a candle stick analysis, trying to get the % of loss of gain every 10 minutes, after I had problems running the code in ubuntu so we decided to do something more simple. For the next days we bought stocks based on the top 100 gainers stocks in finviz, an we sell just the necessary to cover the min number of transactions.

Tayt's Approach : Originally I tried to randomly select 35 stocks from the S&P 500 to work with for the project because I had little experience with stocks and was unsure of which were best to work with and how to work with them. I then tried to develop an algorithm that would buy 10 of each stock to start and then trade them based on a percentage change. For example, sell if there was a price increase of 2% of more and buy if there was a price drop of 2% or more. I then wanted to add in a safety line of code that would invest any remaining money into a 36th random stock to ensure the least possible amount of money was lost due to not being invested. However, after much trial and error I chose to go with a simpler code to be able to work with my remaining money after the penalties I received. My code when stock buy stock, buying and then selling. Logically this would not be a good model to use to make money but without the penalties, it would likely maintain money and possibly increase over time. 

## Instructions
Code is relatively straightforward: Open the file and run the R file.

## The aRmy Team Members: Lilia, Taytumn, Nicholas.
