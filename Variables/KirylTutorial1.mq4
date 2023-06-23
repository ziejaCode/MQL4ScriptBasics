//+------------------------------------------------------------------+
//|                                               KirylTutorial1.mq4 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict 
//#property script_show_confirm
#property script_show_inputs


 extern int StopLoss = 10;
 extern int TakeProfit = 10;



//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
  
   
   
   double StopLossLevel;
   double TakeProfitLevel;
   
   StopLossLevel = Bid-StopLoss*_Point;
   Print("Stop loss level - ",StopLossLevel);
   
   TakeProfitLevel = Bid+TakeProfit*_Point;
   Print("Take profit level - ",TakeProfitLevel);
   
   Alert("StopLoss ",StopLossLevel);
   Alert("TakeProfit ",TakeProfitLevel);
   
  }
//+------------------------------------------------------------------+
