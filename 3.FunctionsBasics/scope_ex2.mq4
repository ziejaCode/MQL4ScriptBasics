//+------------------------------------------------------------------+
//|                                                    scope_ex2.mq4 |
//|                        Copyright 2015, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   int a = 10;
   {
      int b = 10;
      b = b + a;
      Print("b: "+b);
   }
  }
//+------------------------------------------------------------------+
