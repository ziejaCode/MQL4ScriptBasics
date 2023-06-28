//+------------------------------------------------------------------+
//|                                                closeall1_ex4.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Enrico Lambino"
#property link      "http://www.cyberforexworks.com"
#property version   "1.00"
#property strict
#property show_inputs
input string symbol = NULL;
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
         if (OrderSymbol()==symbol)
         {
            if (OrderType()<=1)
               OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),50);
            else
               OrderDelete(OrderTicket());
         }   
      }
   }
  }
//+------------------------------------------------------------------+
