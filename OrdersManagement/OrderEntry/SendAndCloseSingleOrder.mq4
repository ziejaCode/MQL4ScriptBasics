
// Opening and closing the order

void OnStart()
  {
//---Order send practice
   int ticket = OrderSend(NULL,OP_BUY,0.01,Ask,5,0,0);
   
   
   Comment("Wait");
   Sleep(1000);
   Comment("Wait little more ");
   Sleep(1000);
   Comment("Now");
   Sleep(100);
   
   
   OrderClose(ticket,0.01,Bid,5);
   
   
  }