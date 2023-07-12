//+------------------------------------------------------------------+
//|                                                variables_ex1.mq4 |
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
   int b = 2;
   Print("a: "+a+" b: "+b);
   int c = a;
   a = b;
   b = c;
   Print("a: "+a+" b: "+b);
  }
//+------------------------------------------------------------------+
