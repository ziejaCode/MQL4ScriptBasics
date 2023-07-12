
void OnStart()
  {
   int number = MathRand();
   if (number<=10000)
   {
      Alert(number+" is less than 10000");
   }
   else if (number>10000 && number<=20000)
   {
      Alert(number+" is greater than 10000 but less than 20000");
   }
   else if (number>20000)
   {
      Alert(number+" is greater than 20000");
   }
  }