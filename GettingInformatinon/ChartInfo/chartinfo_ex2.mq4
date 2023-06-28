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
  }
//+------------------------------------------------------------------+
