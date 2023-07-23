
  {
//---
   int buyNow = OrderSend(NULL,OP_BUY,1.0,Ask,5,0,0);
   Comment("ticket no. ", buyNow);
   OrderDelete(buyNow,clrNONE);
  }
//+------------------------------------------------------------------+
