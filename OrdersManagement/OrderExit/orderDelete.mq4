
   //int buyNow = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   //Comment("ticket no. ", buyNow);
   //OrderDelete(buyNow,clrNONE);
 
 
 
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
               OrderDelete(i,clrNONE);
               Comment("Order no. ", OrderTicket(), " closed now");
               Alert("Order no. ", OrderTicket(), " closed now");
         }
      }
      Comment(" there teraz is no of oreders " + total);
    }else{
      Comment("There is no order to close teraz");
    }
  }