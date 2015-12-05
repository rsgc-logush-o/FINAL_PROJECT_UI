//THIS IS THE KEY CLASS
//IT DEALS WITH THE KEY BEING PRESSED
//IT WILL CLEAR THE DISPLAY OR FILL THE DISPLAY

class Key
{
  void update(char key)//THE UPDATE FUNCTION WITH THE PARAMETER OF THE KEY THAT WAS PRESSED
  {
    if (key == 'c' || key == 'C')//CHECKING IF THE KEY WAS C IF SO CLEARING THE DISPLAY
    {
      for (int i = 0; i < 32; i++) //THESE LOOPS LOOP THROUGH ALL OF THE PIXELS ON THE DISPLAY AND SET ALL OF THEM TO FALSE AND THEIR COLOUR TO ZERO
      {
        for (int j = 0; j < 32; j++)
        {
          squares[i][j] = false;
          
          squaresR[i][j] = 0;
          squaresG[i][j] = 0;
          squaresB[i][j] = 0;
          
        }
      }
      //THESE SET THE COLOUR SELECTORS TO ZERO TO RESET THEM
      colours[0] = 0;
      colours[1] = 0;
      colours[2] = 0;
    }
    if (key == 'a' || key == 'A')//CHECKING IF THE A KEY WAS PRESSED, IF SO IT IS FILLING THE DISPLAY WITH THE COLOURS ON THE COLOUR SELECTOR
    {
      for (int i = 0; i < 32; i++)//THESE LOOPS LOOP THROUGH ALL OF THE PIXELS ON THE DISPLAY AND SET THEM TO THE COLOUR TO BE DISPLAYED
      {
        for (int j = 0; j < 32; j++)
        {
          squares[i][j] = true;//SETTING THE PIXELS TRUE SO THAT THEY WILL DISPLAY

          squaresR[i][j] = colours[0];
          squaresG[i][j] = colours[1];
          squaresB[i][j] = colours[2];
        }
      }
    }
  }
  
  
  
  
}