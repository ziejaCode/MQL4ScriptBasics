//+------------------------------------------------------------------+
//|                                                chartinfo_ex2.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Enrico Lambino"
#property link      "http://www.cyberforexworks.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   double close = Close[1];
   double high = High[1];
   double low = Low[1];
   double price_weighted = (high+low+close+close)/4;
   Alert("weighted price of the last bar: "+price_weighted);
   Alert("this is point " + Point());
   ///Alert("this is price " + Price());
   
   Alert("this is MarketInfo " + MarketInfo("EURUSD",MODE_SPREAD));
   
   if(IsStopped()) Print("Expert was stopped");
      else if(!IsConnected()) Print("No internet connection");
      else if(!IsExpertEnabled()) Print("Experts not enabled in trading platform");
      else if(IsTradeContextBusy()) Print("Trade context is busy");
      else if(!IsTradeAllowed()) Print("Trade is not allowed in trading platform");
   
   
  }
//+------------------------------------------------------------------+
