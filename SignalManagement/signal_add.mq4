int signal_add(int current,int add,bool exit=false)
  {
   if(current==TRADE_SIGNAL_VOID)
      return current;
   else if(current==TRADE_SIGNAL_NEUTRAL)
      return add;
   else
     {
      if(add==TRADE_SIGNAL_NEUTRAL)
         return current;
      else if(add==TRADE_SIGNAL_VOID)
         return add;
      else if(add!=current)
        {
         if(exit)
            return TRADE_SIGNAL_VOID;
         else
            return TRADE_SIGNAL_NEUTRAL;
        }
     }
   return add;
  }