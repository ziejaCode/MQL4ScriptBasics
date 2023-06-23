//+------------------------------------------------------------------+
//|                                                gettingValues.mq4 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
  double MA_900 = iMA(NULL,0,13,8,MODE_SMMA,PRICE_MEDIAN,3);
  Comment("MA 11 days ago", MA_900);
  }
//+------------------------------------------------------------------+
