


class Grid
{





  void update()
  {
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {
       
        
        if(grid == true)stroke(48);
        else if(grid == false)noStroke();
        
          fill(squaresR[i][j], squaresG[i][j], squaresB[i][j]);
       
         
        rect(i*23, j*23, 23, 23);
      }
    }
    
   
    
  }
}