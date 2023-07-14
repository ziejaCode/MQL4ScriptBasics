//+------------------------------------------------------------------+
//|                                                chartinfo_ex3.mq4 |
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
   double close_eurusd = iClose("EURUSD",PERIOD_D1,1);
   double close_eurjpy = iClose("EURJPY",PERIOD_D1,1);
   double close_usdjpy = iClose("USDJPY",PERIOD_D1,1);
  
   Alert("Last day close price (EURUSD): "+close_eurusd);
   Alert("Last day close price (EURJPY): "+close_eurjpy);
   Alert("Last day close price (USDJPY): "+close_usdjpy);
  }
//+------------------------------------------------------------------+
