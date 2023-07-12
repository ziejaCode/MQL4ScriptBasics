
void OnStart()
  {
//---
   int total=OrdersTotal();
   if(total==0)
     {
      OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
     }
   else if(total==1)
     {
      OrderSend(NULL,OP_SELL,1.0,Bid,5,0,0);
     }
   else
     {
      Alert("total number of orders: "+total);
     }
  }