//+------------------------------------------------------------------+
//|                                                     orderBuy.mq4 |
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
//---
   int buyNow = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   Comment("ticket no. ", buyNow);
   //OrderClose(buyNow,0.5
  }
//+------------------------------------------------------------------+
