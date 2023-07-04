//+------------------------------------------------------------------+
//|                                                 DrawingLines.mq4 |
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
//---
   int HighCandle = iHighest(Symbol(), Period(), MODE_HIGH, 100, 0 );
   
   DrawVline(HighCandle);
   
  }
//+------------------------------------------------------------------+
void DrawVline(int HighCandle){
   ObjectCreate("line",OBJ_VLINE, 0, Time[0], High[HighCandle]);
}