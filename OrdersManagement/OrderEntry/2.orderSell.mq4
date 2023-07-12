

void OnStart()
  {

   OrderSend(NULL,OP_SELL,0.01,Bid,5,0,0);
                   
   int total = OrdersTotal();
   Comment(" there is no of orders ",total," ticket no. ", OrderTicket());
   
  }
