// Close all orders
void OnStart()
  {

   int total = OrdersTotal();
   Comment(" there is no of oreders " + total);
   
   Sleep(2000);
   
   if(total > 0){
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
      Comment(" there is no of oreders " + total);
    }else{
      Comment("There is no order to close");
    }
  }// this is cool