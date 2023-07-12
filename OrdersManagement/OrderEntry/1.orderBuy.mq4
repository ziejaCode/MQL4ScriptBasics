
void OnStart()
  {

   OrderSend(NULL,OP_BUY,0.01,Ask,5,0,0);
   
   int total = OrdersTotal();
   Comment(" there is no of oreders ",total," ticket no. ", OrderTicket());
   
  }
