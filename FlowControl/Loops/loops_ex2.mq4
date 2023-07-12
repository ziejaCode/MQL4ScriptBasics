
void OnStart()
  {
   for (int i = 0; i < 6; i++)
   {
    double price = 0;
    double pending_add = 0;
    
    //get bid or ask, depending on type of order
    if (i == OP_BUY || i == OP_BUYLIMIT || i == OP_BUYSTOP)
      price = Ask;
    else if (i==OP_SELL || i==OP_SELLLIMIT || i==OP_SELLSTOP)
      price = Bid;
      
    //get the offset value from current price, if pending order
    if (i == OP_BUYSTOP || i == OP_SELLLIMIT)
      price = price + 500 * Point;
    else if (i ==OP_BUYLIMIT || i==OP_SELLSTOP)
      price = price - 500 * Point; 
      
    //send the order and get the ticket
    int ticket = OrderSend(NULL,i,0.01,price,1000,0,0);  
    
    /*optional: use for checking for errors; uncomment to use*/
    //if (ticket<=0) Print("failed "+GetLastError());
   }   
  }

