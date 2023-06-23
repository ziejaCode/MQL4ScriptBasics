//+------------------------------------------------------------------+
//|                                                chartinfo_ex1.mq4 |
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
   double open = Open[1];
   double close = Close[1];
   double bar_size = close-open;
   Alert("The size of the last formed bar is "+bar_size);
  }
//+------------------------------------------------------------------+
