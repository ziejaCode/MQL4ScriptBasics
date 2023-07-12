
void OnStart()
  {

   bool just_do_it = true;
   if (just_do_it || (IsConnected() && IsTradeAllowed() && !IsTradeContextBusy())) 
   {
      OrderSend(NULL,OP_BUY,0.10,Ask,5,0,0);
   }else{
      Alert("None of these were fulfilled"); 
   }
  }

