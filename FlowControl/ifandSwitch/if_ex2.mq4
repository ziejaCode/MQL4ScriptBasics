
void OnStart()
  {
   int ticket = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   if(ticket > 0)
     {
      Alert("Order sent successfully, ticket ID: "+ticket);
     
      bool result = OrderClose(ticket,1.0,Bid,5);
      if(result)
        {
         Alert("Order closed successfully, ticket ID: " + ticket);
        }
     }
  }