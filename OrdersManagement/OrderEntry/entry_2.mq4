



int send_order(string ins,int cmd,double volume,int distance,int slippage,int sl,
               int tp,string comment=NULL,int magic=0,int expire=0,int a_clr=clrNONE,bool market=false)
  {
   double price=0;
   double price_sl = 0;
   double price_tp = 0;
   double point=MarketInfo(ins,MODE_POINT);
   datetime expiry= 0;
   int order_type = -1;
   RefreshRates();
   if(cmd==OP_BUY)
     {
      if(distance>0) order_type=OP_BUYSTOP;
      else if(distance<0) order_type=OP_BUYLIMIT;
      else order_type=OP_BUY;
      if(order_type==OP_BUY) distance=0;
      price=MarketInfo(ins,MODE_ASK)+distance*point;
      if(!market)
        {
         if(sl>0) price_sl = price-sl*point;
         if(tp>0) price_tp = price+tp*point;
        }
     }
   else if(cmd==OP_SELL)
     {
      if(distance>0) order_type=OP_SELLLIMIT;
      else if(distance<0) order_type=OP_SELLSTOP;
      else order_type=OP_SELL;
      if(order_type==OP_SELL) distance=0;
      price=MarketInfo(ins,MODE_BID)+distance*point;
      if(!market)
        {
         if(sl>0) price_sl = price+sl*point;
         if(tp>0) price_tp = price-tp*point;
        }
     }
   if(order_type<0) return 0;
   else  if(order_type==0 || order_type==1) expiry=0;
   else if(expire>0)
      expiry=(datetime)MarketInfo(ins,MODE_TIME)+expire;
   if(market)
     {
      int ticket=OrderSend(ins,order_type,volume,price,slippage,0,0,comment,magic,expiry,a_clr);
      if(ticket>0)
        {
         if(OrderSelect(ticket,SELECT_BY_TICKET))
           {
            if(cmd==OP_BUY)
              {
               if(sl>0) price_sl = OrderOpenPrice()-sl*point;
               if(tp>0) price_tp = OrderOpenPrice()+tp*point;
              }
            else if(cmd==OP_SELL)
              {
               if(sl>0) price_sl = OrderOpenPrice()+sl*point;
               if(tp>0) price_tp = OrderOpenPrice()-tp*point;
              }
            bool result=modify(ticket,price_sl,price_tp);
           }
        }
      return ticket;
     }
   return OrderSend(ins,order_type,volume,price,slippage,price_sl,price_tp,comment,magic,expiry,a_clr);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int entry(string ins,int cmd,double volume,int distance,int slippage,int sl,int tp,string comment=NULL,int magic=0,int expire=0,int a_clr=clrNONE,bool market=false,int retries=3,int sleep=500)
  {
   int ticket=0;
   for(int i=0;i<retries;i++)
     {
      // Before place trade check the state of he 
      if(IsStopped()) Print("Expert was stopped");
      else if(!IsConnected()) Print("No internet connection");
      else if(!IsExpertEnabled()) Print("Experts not enabled in trading platform");
      else if(IsTradeContextBusy()) Print("Trade context is busy");
      else if(!IsTradeAllowed()) Print("Trade is not allowed in trading platform");
      else ticket=send_order(ins,cmd,volume,distance,slippage,sl,tp,comment,magic,expire,a_clr,market);
      if(ticket>0)
         break;
      else Print("Error in sending order ("+IntegerToString(GetLastError(),0)+"), retry: "+IntegerToString(i,0)+"/"+IntegerToString(retries));
      Sleep(sleep);
     }
   return ticket;
  }