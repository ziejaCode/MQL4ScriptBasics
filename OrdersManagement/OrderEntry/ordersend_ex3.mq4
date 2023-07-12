//+------------------------------------------------------------------+
//|                                                ordersend_ex3.mq4 |
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
   int ticket = OrderSend(NULL,OP_BUY,1.0,Ask,5,Ask-500*Point,Ask+500*Point,"this is a comment",12345);
   Alert("buy order, ID: "+ticket);
  }
//+------------------------------------------------------------------+
