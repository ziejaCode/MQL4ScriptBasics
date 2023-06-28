//+------------------------------------------------------------------+
//|                                                closeall1_ex3.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Enrico Lambino"
#property link      "http://www.cyberforexworks.com"
#property version   "1.00"
#property strict
#property show_inputs
input int magic = 0;
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
         if (OrderMagicNumber()==magic)
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
