//+------------------------------------------------------------------+
//|                                                        chars.mq4 |
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
   uchar  u_ch; 
  
   for(char ch=-128;ch<=127;ch++) 
     { 
      u_ch=ch; 
      Comment("ch = ",ch," u_ch = ",u_ch); 
      if(ch==127) break; 
     } 
  }
//+------------------------------------------------------------------+
