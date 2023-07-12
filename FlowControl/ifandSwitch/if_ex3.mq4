
void OnStart()
  {
   double open = Open[1];
   double close = Close[1];
   if (open>close)
   {
      Alert("The last formed bar is bearish.");
   }
   if (open<close)
   {
      Alert("The last formed bar is bearish.");
   }   
  }