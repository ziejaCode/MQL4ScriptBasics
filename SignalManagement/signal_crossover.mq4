int signal_crossover(double a1,double a2,double b1,double b2)
  {
   ENUM_TRADE_SIGNAL signal=TRADE_SIGNAL_NEUTRAL;
   if(a1<b1 && a2>=b2)
     {
      signal=TRADE_SIGNAL_BUY;
     }
   else if(a1>b1 && a2<=b2)
     {
      signal=TRADE_SIGNAL_SELL;
     }
   return signal;
  }