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
}