//THIS IS THE MOUSE CLASS
//IT DEALS WITH THE MOUSE CLICKS

//IT IS RESPONSIBLE FOR: 
//CLICKING THE SQUARES
//THE FILL TOOL
//THE ERASER TOOL
//THE GRID ENABLE/DISABLE
//BRUSH SIZE



class Mouse
{

  void update()//THE UPDATE FUNCTION WITH NO PARAMETERS
  {
    
    //THE COLOUR SELECTOR
    //EACH OF THESE IF STATMENTS ARE FOR CHECKING IF IT IS OVER THE RED GREEN OR BLUE COLOUR SELECTOR
    
    if (mouseX < 776 && mouseX > 756 && mouseY < 455 && mouseY > 200)//THIS IS CHECKING THE RED COLOUR SELECTOR
    {
      
      colours[0] = int(map(mouseY, 201, 454, 0, 15));//THIS MAPS THE COLOUR VALUE (0 - 15) TO THE MOUSE VALUE ALONG THE SLIDER
      
    } else if (mouseX < 816 && mouseX > 796 && mouseY < 455 && mouseY > 200 )//THIS IS FOR CHECKING THE GREEN COLOUR SELECTOR
    {
      
      colours[1] = int(map(mouseY, 201, 454, 0, 15));//THIS MAPS THE COLOUR VALUE (0 - 15) TO THE MOUSE VALUE ALONG THE SLIDER
      
    } else if (mouseX < 856 && mouseX > 836 && mouseY < 455 && mouseY > 200)//THIS IS FOR CHECKING THE BLUE COLOUR SELECTOR
    {
      
      colours[2] = int(map(mouseY, 201, 454, 0, 15));//THIS MAPS THE COLOUR VALUE (0 - 15) TO THE MOUSE VALUE ALONG THE SLIDER
      
    }


    //THIS IS FOR THE BRUSH SIZE SELECTOR IT CHECKS IF THE MOUSE IS WITHIN THE BRUSHSIZE SELECTOR BOX
    if (mouseX > 756 && mouseX < 856 && mouseY > 600 && mouseY < 620)
    {
      brushSize = int(map(mouseX, 756, 850, 1, 10));//THIS MAPS THE BRUSHSIZE VALUE (1 - 10) TO THE VALUE OF THE MOUSE ALONG THE BRUSHSIZE SLIDER
    }
    
    //THIS IS FOR SELECTING THE ERASER CHECKBOX IT CHECKS IF THE MOUSE IS OVER THE ERASER AND IT WILL INVERT THE CURRENT ERASER STATE
    if(mouseX > 756 && mouseX < 776 && mouseY > 700 && mouseY < 720)eraser =! eraser;
    
    //CHECKING IF THE MOUSE IS OVER THE BUCKET CHECKBOX IF IT IS IT WILL INVERT THE CURRENT BUCKET STATE
    if(mouseX > 796 && mouseX < 816 && mouseY > 700 && mouseY < 720) bucket =! bucket;
    
    //THIS IS FOR THE GRID TOOL. IF THE MOUSE IS OVER THE GRID SELECTOR IT WILL INVERT IT'S STATE
    if(mouseX > 756 && mouseX < 776 && mouseY > 20 && mouseY < 40)grid =! grid;
    
   


    //THE SQUARE CLICKING
    //THIS CHECKS THAT THE MOUSE IS WITHIN THE CANVAS
    if (mouseX < 736 && mouseY < 736)
    {
      //THESE ARE THE VALUES OF WHICH SQUARE THE MOUSE IS OVER ON BOTH AXIS, IT MAPS THE MOUSE VALUE WITHIN 0 - 31(THE 32 IS THERE BUT IS NOT POSSIBLE TO GET)
      int xSquareOver = int(map(mouseX, 0, 736, 0, 32));
      xSquareOver = constrain(xSquareOver, 0, 32);
      int ySquareOver = int(map(mouseY, 0, height, 0, 32));
      ySquareOver  = constrain(ySquareOver, 0, 32);



        //THIS LOOP IS FOR COVERING THE AREA THAT THE BRUSH SIZE DICTATES
        for (int i = 0; i < brushSize; i++)
        {
          
          for (int j = 0; j < brushSize; j++)
          {
          
          
          //THIS IS IF THE ERASER IS NOT ON, IT WILL DRAW NORMALLY
          if(xSquareOver + j < 32 && ySquareOver + i < 32 && eraser == false)
          {
          
          squares[xSquareOver + j][ySquareOver + i] = true;
          isOver[xSquareOver + j][ySquareOver + i] = true;
          
          squaresR[xSquareOver + j][ySquareOver + i] = colours[0];
          squaresG[xSquareOver + j][ySquareOver + i] = colours[1];
          squaresB[xSquareOver + j][ySquareOver + i] = colours[2];
          
          
          //THIS IS FOR IF THE ERASER IS ON, IT WILL ERASE THE PIXELS THAT THE BRUSH GOES OVER
          }else if(xSquareOver + j < 32 && ySquareOver + i < 32 && eraser == true){
            
            
             squares[xSquareOver + j][ySquareOver + i] = false;
          isOver[xSquareOver + j][ySquareOver + i] = false;
          
          squaresR[xSquareOver + j][ySquareOver + i] = 0;
          squaresG[xSquareOver + j][ySquareOver + i] = 0;
          squaresB[xSquareOver + j][ySquareOver + i] = 0;
          
            
          }
          
          }
          
        }
        //THIS IS THE BUCKET TOOL FOR FILLING, IT IS STILL UNDER CONSTRUCTION
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