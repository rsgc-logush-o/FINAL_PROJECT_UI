//THIS IS THE GRID CLASS
//IT IS RESPONSIBLE FOR UPDATING THE DRAWING CANVAS OF THE DISPLAY

class Grid
{





  void update()//THE UPDATE FUNCTION OF THE GRID CLASS WITH NO PARAMETERS
  {
    for (int i = 0; i < 32; i++)//A FOR LOOP LOOPING THROUGH THE X COORDINATE OF EACH SQUARE
    {
      for (int j = 0; j < 32; j++)//A FOR LOOP LOOPING THROUGH THE Y COORDINATE OF EACH SQUARE
      {
       
        
        if(grid == true)stroke(48);//CHECKING IF THE GRID BOX IS CHECKED AND IF IT IS IT IS SETTING THE STROKE SIZE TO 48 TO SHOW THE GRID LINES
        else if(grid == false)noStroke();//IF THE GRID IS NOT CHECKED IT SETS NO STROKE SO THERE IS NO BORDER ON EACH OF THE SQUARES MEANING NO GRID
        
          fill(squaresR[i][j], squaresG[i][j], squaresB[i][j]);//SETTING THE FILL OF THE RECTANGLE TO DISPLAY THE BRUSH COLOUR
       
         
        rect(i*23, j*23, 23, 23);//DRAWING THE RECTANGLE TO SHOW THE BRUSH COLOUR
      }
    }
    
   
    
  }
}