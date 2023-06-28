void signal_manage(ENUM_TRADE_SIGNAL &entry,ENUM_TRADE_SIGNAL &exit)
  {
   if(exit==TRADE_SIGNAL_VOID)
      entry=TRADE_SIGNAL_NEUTRAL;
   if(exit==TRADE_SIGNAL_BUY && entry==TRADE_SIGNAL_SELL)
      entry=TRADE_SIGNAL_NEUTRAL;
   if(exit==TRADE_SIGNAL_SELL && entry==TRADE_SIGNAL_BUY)
      entry=TRADE_SIGNAL_NEUTRAL;
  }