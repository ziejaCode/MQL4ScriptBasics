//+------------------------------------------------------------------+
//|                                                    SendOrder.mq4 |
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
//---Order send practice
   int ticket = OrderSend(NULL,OP_BUY,0.01,Ask,5,0,0);
   
   
   
   OrderClose(ticket,0.01,Bid,5);
   
   
  }
//+------------------------------------------------------------------+
