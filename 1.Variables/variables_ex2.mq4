//+------------------------------------------------------------------+
//|                                                variables_ex2.mq4 |
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
   double pi = 3.14;
   double diameter = 10.0;
   double radius = diameter/2.0;
   double circumference = 2*pi*radius;
   Print("circumference: "+circumference);   
  }
//+------------------------------------------------------------------+
