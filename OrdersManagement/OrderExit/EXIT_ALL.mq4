
void OnStart()
  {
//---
   exit_all();
  }
//+------------------------------------------------------------------+


// this method get amount of orders and close them all
void exit_all(int type = -1, int magic = -1)
{
   for (int i = OrdersTotal(); i>=0 ; i--)
   {
      if (OrderSelect(i,SELECT_BY_POS))
      {
         if((type == -1 || type == OrderType()) && (magic == -1 || magic == OrderMagicNumber()))
            exit(OrderTicket());
      }
   }
}


// this function runs all precheck on the platform
bool exit(int ticket,color a_color=clrNONE,int slippage=50,int retries=3,int sleep=500)
  {
   bool result=false;
   for(int i = 0; i < retries; i++)
     {
      if (!IsConnected())              Print("No internet connection");
      else if (!IsExpertEnabled())     Print("Experts not enabled in trading platform");
      else if (IsTradeContextBusy())   Print("Trade context is busy");
      else if (!IsTradeAllowed())      Print("Trade is not allowed in trading platform");
      else result = exit_order(ticket, a_color, slippage);
      
      if(result)
         break;
      Print("Closing order# "+DoubleToStr(OrderTicket(),0)+" failed "+DoubleToStr(GetLastError(),0));
      Sleep(sleep);
     }
   return result;
  }
  
// this function just exits the market and pending order 
int exit_order(int ticket,color a_color=clrNONE,int slippage=50)
{
   int result = 0;
   if (OrderSelect(ticket,SELECT_BY_TICKET))
   {
      RefreshRates();
      if (OrderType()<=1)
      {
         result = OrderClose(ticket,OrderLots(),OrderClosePrice(),slippage,a_color);
      }
      else if (OrderType()>1)
      {
         result = OrderDelete(ticket,a_color);
      }
   }   
   return result;
}