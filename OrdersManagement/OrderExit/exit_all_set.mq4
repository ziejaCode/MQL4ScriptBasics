enum ENUM_ORDER_SET
  {
   ORDER_SET_ALL=-1,
   ORDER_SET_BUY,
   ORDER_SET_SELL,
   ORDER_SET_BUY_LIMIT,
   ORDER_SET_SELL_LIMIT,
   ORDER_SET_BUY_STOP,
   ORDER_SET_SELL_STOP,
   ORDER_SET_LONG,
   ORDER_SET_SHORT,
   ORDER_SET_LIMIT,
   ORDER_SET_STOP,
   ORDER_SET_MARKET,
   ORDER_SET_PENDING
  };

void exit_all_set(ENUM_ORDER_SET type = -1,int magic = -1)
  {
   for(int i = OrdersTotal(); i >= 0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS))
        {
         if(magic == -1 || magic == OrderMagicNumber())
           {
            int ordertype = OrderType();
            int ticket = OrderTicket();
            
            switch(type)
              {
               case ORDER_SET_BUY:
                  if(ordertype == OP_BUY) exit(ticket);
                  break;
               case ORDER_SET_SELL:
                  if(ordertype==OP_SELL) exit(ticket);
                  break;
               case ORDER_SET_BUY_LIMIT:
                  if(ordertype==OP_BUYLIMIT) exit(ticket);
                  break;
               case ORDER_SET_SELL_LIMIT:
                  if(ordertype==OP_SELLLIMIT) exit(ticket);
                  break;
               case ORDER_SET_BUY_STOP:
                  if(ordertype==OP_BUYSTOP) exit(ticket);
                  break;
               case ORDER_SET_SELL_STOP:
                  if(ordertype==OP_SELLSTOP) exit(ticket);
                  break;
               case ORDER_SET_LONG:
                  if(ordertype==OP_BUY || ordertype==OP_BUYLIMIT || ordertype==OP_BUYSTOP)
                  exit(ticket);
                  break;
               case ORDER_SET_SHORT:
                  if(ordertype==OP_SELL || ordertype==OP_SELLLIMIT || ordertype==OP_SELLSTOP)
                  exit(ticket);
                  break;
               case ORDER_SET_LIMIT:
                  if(ordertype==OP_BUYLIMIT || ordertype==OP_SELLLIMIT)
                  exit(ticket);
                  break;
               case ORDER_SET_STOP:
                  if(ordertype==OP_BUYSTOP || ordertype==OP_SELLSTOP)
                  exit(ticket);
                  break;
               case ORDER_SET_MARKET:
                  if(ordertype<=1) exit(ticket);
                  break;
               case ORDER_SET_PENDING:
                  if(ordertype>1) exit(ticket);
                  break;
               default: exit(ticket);
              }
           }
        }
     }
  }