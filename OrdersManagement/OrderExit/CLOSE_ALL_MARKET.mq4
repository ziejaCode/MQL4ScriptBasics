//+------------------------------------------------------------------+
//|                                             CLOSE_ALL_MARKET.mq4 |
//|                        Copyright 2016, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   int total = OrdersTotal();
   Comment(" there is no of oreders " + total);
   for (int i=total-1;i>=0;i--)
   {
      if (OrderSelect(i,SELECT_BY_POS))
      {
         if (OrderType()<=1)
            OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5);
      }
   }
  }
//+------------------------------------------------------------------+
