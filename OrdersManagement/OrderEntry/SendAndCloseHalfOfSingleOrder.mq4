
// Opening and closing half of the order

void OnStart()
  {
//---Order send practice
   int ticket = OrderSend(NULL,OP_BUY,0.03,Ask,5,0,0);
   
   
   Comment("Wait for close 1");
   Sleep(1000);
   Comment("Wait little more ");
   Sleep(1000);
   Comment("Now close 1");
   Sleep(100);
   
   
   OrderClose(ticket,0.01,Bid,5);
   
   Comment("Wait for close 2");
   Sleep(1000);
   Comment("Wait little more ");
   Sleep(1000);
   Comment("Now close 2");
   Sleep(100);
   
   
   Comment("Wait for close 3");
   Sleep(1000);
   Comment("Wait little more ");
   Sleep(1000);
   Comment("Now close 3");
   Sleep(100);
   
   
   OrderClose(ticket,0.01,Bid,5);
   
   
  }