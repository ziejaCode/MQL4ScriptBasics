//+------------------------------------------------------------------+
//|                                                chartinfo_ex1.mq4 |
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
   //--- Show all the information available from the function AccountInfoDouble() 
   Alert("ACCOUNT_BALANCE =  %G",AccountInfoDouble(ACCOUNT_BALANCE)); 
   Alert("ACCOUNT_CREDIT =  %G",AccountInfoDouble(ACCOUNT_CREDIT)); 
   Alert("ACCOUNT_PROFIT =  %G",AccountInfoDouble(ACCOUNT_PROFIT)); 
   Alert("ACCOUNT_EQUITY =  %G",AccountInfoDouble(ACCOUNT_EQUITY)); 
   Alert("ACCOUNT_MARGIN =  %G",AccountInfoDouble(ACCOUNT_MARGIN)); 
   Alert("ACCOUNT_MARGIN_FREE =  %G",AccountInfoDouble(ACCOUNT_MARGIN_FREE)); 
   Alert("ACCOUNT_MARGIN_LEVEL =  %G",AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)); 
   Alert("ACCOUNT_MARGIN_SO_CALL = %G",AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL)); 
   Alert("ACCOUNT_MARGIN_SO_SO = %G",AccountInfoDouble(ACCOUNT_MARGIN_SO_SO));
   Alert("The name of the broker = ",AccountInfoString(ACCOUNT_COMPANY)); 
   Alert("Deposit currency = ",AccountInfoString(ACCOUNT_CURRENCY)); 
   Alert("Client name = ",AccountInfoString(ACCOUNT_NAME)); 
   Alert("The name of the trade server = ",AccountInfoString(ACCOUNT_SERVER)); 
  
  }
//+------------------------------------------------------------------+
