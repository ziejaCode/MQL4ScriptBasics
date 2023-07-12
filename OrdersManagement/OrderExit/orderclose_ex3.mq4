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
   int ticket1 = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   int ticket2 = OrderSend(NULL,OP_SELL,1.0,Bid,5,0,0);
   OrderClose(ticket2,1.0,Ask,5);
  }
//+------------------------------------------------------------------+
