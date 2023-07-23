void OnStart()
  {
    compare_doubles(34.67,56.89,5);
  } 
int compare_doubles(double var1,double var2,int precision)
     {
      double point = MathPow(10, -precision);
      int var1_int = var1/point;
      int var2_int = var2/point;
      
      if(var1_int > var2_int)
         return 1;
      else if(var1_int < var2_int)
         return -1;
      return 0;
     }   