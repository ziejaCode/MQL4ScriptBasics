//+------------------------------------------------------------------+
//|                                                variables_ex3.mq4 |
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
   double a = 0.618;
   double b = 0.382;
   double c = 0.236;
   double d = 0.0;
   double average = (a+b+c+d)/4.0;
   Print("average: "+average);   
  }
//+------------------------------------------------------------------+
