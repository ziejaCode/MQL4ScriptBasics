bool is_new_bar(string ins,int tf,bool wait=false)
  {
   static datetime bar_time=0;
   static double open_price=0;
   datetime current_bar_time=iTime(ins,tf,0);
   double current_open_price=iOpen(ins,tf,0);
   int digits = (int)MarketInfo(ins,MODE_DIGITS);
   if(bar_time==0 && open_price==0)
     {
      bar_time=current_bar_time;
      open_price=current_open_price;
      if(wait)
         return false;
      else return true;
     }
   else if(current_bar_time>bar_time && 
      compare_doubles(open_price,current_open_price,digits)!=0)
        {
         bar_time=current_bar_time;
         open_price=current_open_price;
         return true;
        }
      return false;
  }