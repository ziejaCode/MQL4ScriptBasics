
double mm(MM method,string ins,double lots,int sl,double risk_mm1,double lots_mm2,double per_mm2,double risk_mm3,double risk_mm4)
  {
   double balance=AccountBalance();
   double tick_value=MarketInfo(ins,MODE_TICKVALUE);
   double volume=lots;
   
   switch(method)
     {
      case MM_RISK_PERCENT:
         if(sl > 0) volume = ((balance * risk_mm1) / sl) / tick_value;
         break;
         
      case MM_FIXED_RATIO:
         volume=balance*lots_mm2/per_mm2;
         break;
      case MM_FIXED_RISK:
         if(sl>0) volume=(risk_mm3/tick_value)/sl;
         break;
      case MM_FIXED_RISK_PER_POINT:
         volume=risk_mm4/tick_value;
         break;
     }
   double min_lot=MarketInfo(ins,MODE_MINLOT);
   double max_lot=MarketInfo(ins,MODE_MAXLOT);
   int lot_digits=(int) -MathLog10(MarketInfo(ins,MODE_LOTSTEP));
   
   volume=NormalizeDouble(volume,lot_digits);
   if(volume<min_lot) volume=min_lot;
   if(volume>max_lot) volume=max_lot;
   return volume;
  }