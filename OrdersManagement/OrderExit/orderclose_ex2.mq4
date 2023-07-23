
void OnStart()
  {
//---
   int ticket = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   OrderClose(ticket,1.0,Bid,5);
   PlaySound("alert.wav");
  }
//+------------------------------------------------------------------+
