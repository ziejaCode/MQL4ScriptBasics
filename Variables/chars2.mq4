//+------------------------------------------------------------------+
//|                                                       chars2.mq4 |
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
   int a='A'; 
   int b='$'; 
   int c='©';      // code 0xA9 ",",
   int d='\xAE';   // code of the symbol ® 
//--- output print constants 
   Print(a,",",b,",",c,",",d); 
   
   string test=""; 
   StringSetCharacter(test,0,a); 
   Print(test); 
   
   
   
   
  }
//+------------------------------------------------------------------+
