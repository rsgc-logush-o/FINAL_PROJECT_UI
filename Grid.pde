


class Grid
{





  void update()
  {
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {
        if (squares[i][j] == true)
        {
          fill(squaresR[i][j], squaresG[i][j], squaresB[i][j]);
        } else
        {
          fill(0);
        }
        rect(i*23, j*23, 23, 23);
      }
    }
  }
}