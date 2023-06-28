//+------------------------------------------------------------------+
//|                                                closeall1_ex2.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Enrico Lambino"
#property link      "http://www.cyberforexworks.com"
#property version   "1.00"
#property strict
#property show_inputs
input double min_profit = 10.0;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   for (int i=OrdersTotal();i>=0;i--)
   {
      if (OrderSelect(i,SELECT_BY_POS))
      {
         if (OrderProfit()>=min_profit)
            OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),50);
      }
   }
  }
//+------------------------------------------------------------------+
