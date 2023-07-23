//+------------------------------------------------------------------+
//|                                                        Link1.mq4 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   ObjectCreate("RefLink", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("RefLink", "https://docs.mql4.com/trading", 15, "Arial", Orchid);
   ObjectSet("RefLink", OBJPROP_XDISTANCE, 10);
   ObjectSet("RefLink", OBJPROP_YDISTANCE, 30);   
  }

