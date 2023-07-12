//+------------------------------------------------------------------+
//|                                                    scope_ex3.mq4 |
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
   int a = 1;
   Print("a: "+a);
   {
      int a = 2;
      Print("a: "+a);
      {
         int a = 3;
         Print("a: "+a);
      }
   }
  }
//+------------------------------------------------------------------+
