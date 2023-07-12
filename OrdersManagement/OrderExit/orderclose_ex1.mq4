//+------------------------------------------------------------------+
//|                                                ordersend_ex1.mq4 |
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
   int ticket = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   OrderClose(ticket,1.0,Bid,5);
  }
//+------------------------------------------------------------------+
