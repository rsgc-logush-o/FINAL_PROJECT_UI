class Key
{
  void update(char key)
  {
    if (key == 'c' || key == 'C')
    {
      for (int i = 0; i < 32; i++) 
      {
        for (int j = 0; j < 32; j++)
        {
          squares[i][j] = false;
          
          squaresR[i][j] = 0;
          squaresG[i][j] = 0;
          squaresB[i][j] = 0;
          
        }
      }
      
      colours[0] = 0;
      colours[1] = 0;
      colours[2] = 0;
    }
    if (key == 'a' || key == 'A')
    {
      for (int i = 0; i < 32; i++)
      {
        for (int j = 0; j < 32; j++)
        {
          squares[i][j] = true;

          squaresR[i][j] = colours[0];
          squaresG[i][j] = colours[1];
          squaresB[i][j] = colours[2];
        }
      }
    }
  }
  
  void fill()
  {
    for(int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {
         if(squaresR[i][j] == 0 && squaresG[i][j] == 0 && squaresB[i][j] == 0); 
      }
    }
  }
  
  
}