
//+------------------------------------------------------------------+
//| This is all about OrderSelect function.                                  |
//+------------------------------------------------------------------+
void OnStart()
  {
   for (int i = OrdersTotal(); i>=0 ; i--)
   {
      if (OrderSelect(i,SELECT_BY_POS))
         Alert(OrderType());
   }
  }
//+------------------------------------------------------------------+
