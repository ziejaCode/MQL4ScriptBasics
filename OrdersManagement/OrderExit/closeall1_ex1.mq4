

input double min_loss = -10.0;

void OnStart()
  {

   for (int i=OrdersTotal();i>=0;i--)
   {
      if (OrderSelect(i,SELECT_BY_POS))
      {
         //if (OrderProfit()<=min_loss)
            OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),50);
            Comment("Order no. ", OrderTicket(), " closed ");
            Alert("Order no. ", OrderTicket(), " closed ");
      }
   }
  }