

input string symbol = NULL;
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