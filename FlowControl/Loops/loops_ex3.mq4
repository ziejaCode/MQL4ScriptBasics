
void OnStart()
  {
   while(true)
     {
      if (OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0)>0)
         break;
     }
  }

