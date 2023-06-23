//+------------------------------------------------------------------+
//|                                                       string.mq4 |
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
   string str="0123456789"; 
   Print("before: str = ",str,",StringBufferLen(str) = ",StringBufferLen(str),"  StringLen(str) = ",StringLen(str));
   Print(""); 

//--- add zero value in the middle 
   StringSetCharacter(str,6,3); 
   Print("after: str = ",str,",StringBufferLen(str) = ",StringBufferLen(str),"  StringLen(str) = ",StringLen(str)); 
  }
//+------------------------------------------------------------------+
