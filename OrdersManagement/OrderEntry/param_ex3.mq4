//+------------------------------------------------------------------+
//|                                                    param_ex3.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Enrico Lambino"
#property link      "http://www.cyberforexworks.com"
#property version   "1.00"
#property strict
#property show_inputs

input double lotsize = 1.0;
input int stoploss_in_pts = 50;
input int takeprofit_in_pts = 50;
input string comment = "this is a test";
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   double stoploss_in_price = 0;
   double takeprofit_in_price = 0;
   if (stoploss_in_pts>0)
      stoploss_in_price = Ask-stoploss_in_pts*Point;
   if (takeprofit_in_pts>0)
      takeprofit_in_price = Ask+takeprofit_in_pts*Point;
   OrderSend(NULL,OP_BUY,lotsize,Ask,5,stoploss_in_price,takeprofit_in_price,comment);
  }
//+------------------------------------------------------------------+
