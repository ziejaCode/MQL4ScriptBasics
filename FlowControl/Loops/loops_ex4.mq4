void OnStart()
  {
   do
   {
      int ticket = OrderSend(NULL,OP_BUY,0.01,Ask,5,0,0);  
      if (ticket<=0) Print("failed "+GetLastError());
   }
   while (OrdersTotal()<6);
  }

