
input double min_profit = 10.0;

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
