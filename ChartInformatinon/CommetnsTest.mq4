//+------------------------------------------------------------------+
//|                                                 CommetnsTest.mq4 |
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
   int ye = Year();
   
   if(ye==2023 && Month()<7) 
   Comment("this is a dfgf dgf comment in ", ye);
   
   double Ask,Bid; 
   int Spread; 
   Ask=SymbolInfoDouble(Symbol(),SYMBOL_ASK); 
   Bid=SymbolInfoDouble(Symbol(),SYMBOL_BID); 
   Spread=SymbolInfoInteger(Symbol(),SYMBOL_SPREAD); 
//--- Output values in three lines 
   Comment(StringFormat("Show prices\nAsk = %G\nBid = %G\nSpread = %d",Ask,Bid,Spread)); 
   
   
   
   
  }
//+------------------------------------------------------------------+
