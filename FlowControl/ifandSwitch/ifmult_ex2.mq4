
void OnStart()
  {
   double open1  = Open[1];
   double close1 = Close[1];
   double open2  = Open[2];
   double close2 = Close[2];
   double open3  = Open[3];
   double close3 = Close[3];
   
   if (open1>close1 && open2>close2 && open3>close3)
   {
      Alert("Three consecutive bearish bars detected!");
   }
   
   if (open1 < close1 && open2 < close2 && open3 < close3)
   {
      Alert("Three consecutive bullish bars detected!");
   }else{
      Alert("None of these were fulfilled"); 
   }
  }
