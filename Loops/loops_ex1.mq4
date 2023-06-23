//+------------------------------------------------------------------+
//|                                                    loops_ex1.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Enrico Lambino"
#property link      "http://www.cyberforexworks.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   for (int i=0;i<6;i++)
   {
    int ticket = OrderSend(NULL,OP_BUY,0.01,Ask,5,0,0);  
    //if (ticket<=0) Print("failed "+GetLastError());
   }   
  }
//+------------------------------------------------------------------+
