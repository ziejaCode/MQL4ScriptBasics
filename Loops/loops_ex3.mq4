//+------------------------------------------------------------------+
//|                                                    loops_ex3.mq4 |
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
   while(true)
     {
      if (OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0)>0)
         break;
     }
  }
//+------------------------------------------------------------------+
