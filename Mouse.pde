class Mouse
{

  void update()
  {
    
    //THE COLOUR SELECTOR
    if (mouseX < 776 && mouseX > 756 && mouseY < 455 && mouseY > 200)
    {
      colours[0] = int(map(mouseY, 200, 455, 0, 255));
    } else if (mouseX < 816 && mouseX > 796 && mouseY < 455 && mouseY > 200 )
    {
      colours[1] = int(map(mouseY, 200, 455, 0, 255));
    } else if (mouseX < 856 && mouseX > 836 && mouseY < 455 && mouseY > 200)
    {
      colours[2] = int(map(mouseY, 200, 455, 0, 255));
    }

    //THE SQUARE CLICKING
    if (mouseX < 736 && mouseY < 736)
    {
      int xSquareOver = int(map(mouseX, 0, 736, 0, 32));
      xSquareOver = constrain(xSquareOver, 0, 32);
      int ySquareOver = int(map(mouseY, 0, height, 0, 32));
      ySquareOver  = constrain(ySquareOver, 0, 32);



      if ( isColourEqual(squaresR[xSquareOver][ySquareOver], squaresG[xSquareOver][ySquareOver], squaresB[xSquareOver][ySquareOver], colours[0], colours[1], colours[2]) == false)
      {
        squares[xSquareOver][ySquareOver] = true;
        isOver[xSquareOver][ySquareOver] = true;

        squaresR[xSquareOver][ySquareOver] = colours[0];
        squaresG[xSquareOver][ySquareOver] = colours[1];
        squaresB[xSquareOver][ySquareOver] = colours[2];
        // fill(0);
      }
    }
  }
  
  boolean isColourEqual(int currentR, int currentG, int currentB, int oldR, int oldG, int oldB)
  {
    
    if(currentR == oldR && currentG == oldG && currentB == oldB)
    {
      return (true);    
    }else
    {
      return (false);
    }
  }
  
}