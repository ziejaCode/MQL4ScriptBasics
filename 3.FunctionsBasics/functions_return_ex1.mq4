//+------------------------------------------------------------------+
//|                                         functions_return_ex1.mq4 |
//|                                   Copyright 2015, Enrico Lambino |
//|                                   http://www.cyberforexworks.com |
//+------------------------------------------------------------------+

void OnStart()
  {
   int account_number = AccountNumber();
   Print("account number: " + account_number);
  }
