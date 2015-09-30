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

    if (mouseX > 756 && mouseX < 856 && mouseY > 600 && mouseY < 620)
    {
      brushSize = int(map(mouseX, 756, 850, 1, 10));
    }
    
    if(mouseX > 756 && mouseX < 776 && mouseY > 700 && mouseY < 720 && eraser == false)eraser = true;
    else if(mouseX > 756 && mouseX < 776 && mouseY > 700 && mouseY < 720 && eraser == true)eraser = false;
    
    if(mouseX > 796 && mouseX < 816 && mouseY > 700 && mouseY < 720 && bucket == false)bucket = true;
    else if(mouseX > 796 && mouseX < 816 && mouseY > 700 && mouseY < 720 && bucket == true)bucket = false;
    
    if(mouseX > 756 && mouseX < 776 && mouseY > 20 && mouseY < 40 && grid == false)grid = true;
    else if(mouseX > 756 && mouseX < 776 && mouseY > 20 && mouseY < 40 && grid == true)grid = false;


    //THE SQUARE CLICKING
    if (mouseX < 736 && mouseY < 736)
    {
      int xSquareOver = int(map(mouseX, 0, 736, 0, 32));
      xSquareOver = constrain(xSquareOver, 0, 32);
      int ySquareOver = int(map(mouseY, 0, height, 0, 32));
      ySquareOver  = constrain(ySquareOver, 0, 32);



      
        for (int i = 0; i < brushSize; i++)
        {
          
          for (int j = 0; j < brushSize; j++)
          {
          
          //TODO add second for loop for y axis 
          
          if(xSquareOver + j < 32 && ySquareOver + i < 32 && eraser == false)
          {
          
          squares[xSquareOver + j][ySquareOver + i] = true;
          isOver[xSquareOver + j][ySquareOver + i] = true;
          
          squaresR[xSquareOver + j][ySquareOver + i] = colours[0];
          squaresG[xSquareOver + j][ySquareOver + i] = colours[1];
          squaresB[xSquareOver + j][ySquareOver + i] = colours[2];
          
          }else if(xSquareOver + j < 32 && ySquareOver + i < 32 && eraser == true){
            
            
             squares[xSquareOver + j][ySquareOver + i] = false;
          isOver[xSquareOver + j][ySquareOver + i] = false;
          
          squaresR[xSquareOver + j][ySquareOver + i] = 0;
          squaresG[xSquareOver + j][ySquareOver + i] = 0;
          squaresB[xSquareOver + j][ySquareOver + i] = 0;
          
            
          }
          
          }
          
        }
        
        if(bucket == true)
        {
          
        
          for(int i = 0; i < 32; i++)
          {
           for (int j = 0; j < 32; j++)
           {
               //check around each pixel              
               
               if(squares[i][j] == true)
               {
                
               
                 
                 for (int l = j; l < 32; l++)
                 {
                   
                   if(squares[i][l] == true)
                   {
                     for(int c = j; c <= l; c++)
                     {
                       
                       if(squares[i][c] == false)
                       {
                       squares[i][c] = true;
                       
                       squaresR[i][c] = colours[0];
                       squaresG[i][c] = colours[1];
                       squaresB[i][c] = colours[2];
                       }
                     }
                   }
                  
                 }
                 
               }
           }
          }
        }
      
    }
  }
  
 
  
}