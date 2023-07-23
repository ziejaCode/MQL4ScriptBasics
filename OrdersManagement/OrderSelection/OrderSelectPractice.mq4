
//+------------------------------------------------------------------+
//| This is all about OrderSelect function.    
//| Link to References - https://docs.mql4.com/trading


                              
//+------------------------------------------------------------------+
void OnStart()
  {
  
  
   datetime orderCloseTime;
   double   orderClosePrice;
   string   orderComment;
   double   orderCommission; 
   datetime orderExpiration; 
   double   orderLots; 
   int      orderMagicNumber;
   double   orderOpenPrice;
   datetime orderOpenTime;       
   double   orderProfit;
   int      ordersHistoryTotal;
   double   orderStopLoss;
   int      ordersTotal;
   double   orderSwap;
   string   orderSymbol;
   double   orderTakeProfit; 
   int      orderTicket;
   int      orderType;
  
   string comment = "This order has values:\n";
  
   for (int i = OrdersTotal(); i >= 0 ; i--){
      
      Alert("Orders total number is " + OrdersTotal());
   
      
      if (OrderSelect(i,SELECT_BY_POS))
           OrderPrint(); // this function prints info to the Log (Experts tab)
           OrderCloseTime(); // this function 
           OrderClosePrice(); // this function
           OrderComment(); // this function 
           OrderCommission(); // this function 
           OrderExpiration(); // this function 
           OrderLots(); // this function 
           orderMagicNumber = OrderMagicNumber(); // this function 
           comment += i + " orderMagicNumber " + orderMagicNumber + "\n";
           OrderOpenPrice(); // this function 
           OrderOpenTime(); // this function 
           OrderPrint(); // this function 
           OrderProfit(); // this function 
           OrderStopLoss(); // this function 
           OrderSwap(); // this function 
           OrderSymbol(); // this function 
           OrderTakeProfit(); // this function  
           OrderTicket(); // this function  
           OrderType(); // this function 
           
          
           
           Comment(comment);
           
   }
  }
//+------------------------------------------------------------------+
