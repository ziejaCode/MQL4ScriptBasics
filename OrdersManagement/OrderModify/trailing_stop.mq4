bool trailingstop_check_order(int ticket,int trail,int threshold,int step)
  {
   if(ticket<=0) return true;
   if(!OrderSelect(ticket,SELECT_BY_TICKET)) return false;
   int digits=(int) MarketInfo(OrderSymbol(),MODE_DIGITS);
   double point=MarketInfo(OrderSymbol(),MODE_POINT);
   bool result=true;
   if(OrderType()==OP_BUY)
     {
      double newsl=OrderClosePrice()-trail*point;
      double activation=OrderOpenPrice()+threshold*point;
      double activation_sl=activation-(trail*point);
      double step_in_pts= newsl-OrderStopLoss();
      if(OrderStopLoss()==0|| compare_doubles(activation_sl,OrderStopLoss(),digits)>0)
        {
         if(compare_doubles(OrderClosePrice(),activation,digits)>=0)
            result=modify(ticket,activation_sl);
        }
      else if(compare_doubles(step_in_pts,step*point,digits)>=0)
        {
         result=modify(ticket,newsl);
        }
     }
   else if(OrderType()==OP_SELL)
     {
      double newsl=OrderClosePrice()+trail*point;
      double activation=OrderOpenPrice()-threshold*point;
      double activation_sl=activation+(trail*point);
      double step_in_pts= OrderStopLoss()-newsl;
      if(OrderStopLoss()==0|| compare_doubles(activation_sl,OrderStopLoss(),digits)<0)
        {
         if(compare_doubles(OrderClosePrice(),activation,digits)<=0)
            result=modify(ticket,activation_sl);
        }
      else if(compare_doubles(step_in_pts,step*point,digits)>=0)
        {
         result=modify(ticket,newsl);
        }
     }
   return result;
  }