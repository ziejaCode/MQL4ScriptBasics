
void OnStart()
  {
   if (IsConnected() && IsTradeAllowed()&& !IsTradeContextBusy()){
      Alert("Connection ", IsConnected(), " Is trade allowed ", IsTradeAllowed(), " or ", IsTradeContextBusy());
      OrderSend(NULL,OP_BUY,0.01,Ask,5,0,0);
      OrderSend(NULL,OP_BUY,0.1,Ask,5,0,0);
   }
  
   /**
   if (IsConnected() && IsTradeAllowed() && !IsTradeContextBusy())
   {
      OrderSend(NULL,OP_BUY,1,Ask,5,0,0);
   }
   else{
      Alert("No Connection ", IsConnected(), " Is trade allowed ", IsTradeAllowed(), " or ", IsTradeContextBusy());
   }
   **/
   
  }