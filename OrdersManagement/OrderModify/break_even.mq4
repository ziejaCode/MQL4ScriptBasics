bool breakeven_check_order(int ticket,int threshold,int plus)
  {
   if(ticket<=0) return true;
   if(!OrderSelect(ticket,SELECT_BY_TICKET)) return false;
   int digits=(int)MarketInfo(OrderSymbol(),MODE_DIGITS);
   double point=MarketInfo(OrderSymbol(),MODE_POINT);
   bool result=true;
   if(OrderType()==OP_BUY)
     {
      double newsl=OrderOpenPrice()+plus*point;
      double profit_in_pts=OrderClosePrice()-OrderOpenPrice();
      if(OrderStopLoss()==0 || compare_doubles(newsl,OrderStopLoss(),digits)>0)
         if(compare_doubles(profit_in_pts,threshold*point,digits)>=0)
            result=modify(ticket,newsl);
     }
   else if(OrderType()==OP_SELL)
     {
      double newsl=OrderOpenPrice()-plus*point;
      double profit_in_pts=OrderOpenPrice()-OrderClosePrice();
      if(OrderStopLoss()==0 || compare_doubles(newsl,OrderStopLoss(),digits)<0)
         if(compare_doubles(profit_in_pts,threshold*point,digits)>=0)
            result=modify(ticket,newsl);
     }
   return result;
  }

void breakeven_check(int threshold,int plus,int magic=-1)
  {
   for(int i=0;i<OrdersTotal();i++)
     {
      if(OrderSelect(i,SELECT_BY_POS))
         if(magic==-1 || magic==OrderMagicNumber())
            breakeven_check_order(OrderTicket(),threshold,plus);
     }
  }