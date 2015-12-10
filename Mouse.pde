//This is the mouse class
//It deals with the mouse clicks

//It is responsible for
//Clicking the squares
//Clicking the tools



class Mouse
{

  //This is the update function, it is called every time the mouse is clicked
  void update()
  {


    //This is the colour selection slider, it handles setting the colour selectors based
    if (mouseX < 776 && mouseX > 756 && mouseY < 455 && mouseY > 200)//This checks the red selector
    {

      colours[0] = int(map(mouseY, 201, 454, 0, 15));
    } else if (mouseX < 816 && mouseX > 796 && mouseY < 455 && mouseY > 200 )//This checks the green selector
    {

      colours[1] = int(map(mouseY, 201, 454, 0, 15));
    } else if (mouseX < 856 && mouseX > 836 && mouseY < 455 && mouseY > 200)//This checks the blue colour selector
    {

      colours[2] = int(map(mouseY, 201, 454, 0, 15));
    }

    //This checks if the mouse is within the brushSize selector box, if so it will set the brushSize to the appropriate value
    if (mouseX > 756 && mouseX < 856 && mouseY > 600 && mouseY < 620)
    {
      brushSize = int(map(mouseX, 756, 850, 1, 10));
    }



    //These are for all of the tools, checking if they were clicked
    if (grid.isTouching())grid.whichState =! grid.whichState;
    if (eraser.isTouching())eraser.whichState =! eraser.whichState;
    if (loadPhoto.isTouching())
    {
      loadPhoto.whichState =! loadPhoto.whichState;
      if (loadPhoto.whichState == true)
      {
        //Has a popup window go up with a file selector
        selectInput("select", "photoSelect");
      }
    }
    if (clear.isTouching())setDisplay(0, 0, 0, false);
    if (bucket.isTouching())setDisplay(colours[0], colours[1], colours[2], true);
    if (readFile.isTouching())selectInput("select", "fileSelect");
    if (saveFile.isTouching())selectOutput("select", "outSelect");

    //This checks if the squares were clicked
    if (mouseX < 736 && mouseY < 736)
    {

      //Maps the mouse between the width of the canvas
      int xSquareOver = int(map(mouseX, 0, 736, 0, 32));
      xSquareOver = constrain(xSquareOver, 0, 32);
      int ySquareOver = int(map(mouseY, 0, height, 0, 32));
      ySquareOver  = constrain(ySquareOver, 0, 32);

      //Tells the program there is new data to send  
      sendNew = true;


      //This is for setting all of the squares within the brush size selected
      for (int i = 0; i < brushSize; i++)
      {

        for (int j = 0; j < brushSize; j++)
        {


          //This is if the eraser is not on, if it is not it will draw normally
          if (xSquareOver + j < 32 && ySquareOver + i < 32 && eraser.whichState == false)
          {

            squares[xSquareOver + j][ySquareOver + i] = true;


            squaresR[xSquareOver + j][ySquareOver + i] = colours[0];
            squaresG[xSquareOver + j][ySquareOver + i] = colours[1];
            squaresB[xSquareOver + j][ySquareOver + i] = colours[2];
          } else if (xSquareOver + j < 32 && ySquareOver + i < 32 && eraser.whichState == true) {//This is if the eraser is true it will set all of the squares within the brush black


            squares[xSquareOver + j][ySquareOver + i] = false;


            squaresR[xSquareOver + j][ySquareOver + i] = 0;
            squaresG[xSquareOver + j][ySquareOver + i] = 0;
            squaresB[xSquareOver + j][ySquareOver + i] = 0;
          }
        }
      }
    }
  }

  //This sets the display to the colours and pixel state (true or false) set in the parameters. It is used by the clear all too and the set all tool
  void setDisplay(int red, int green, int blue, boolean pixelState)
  {
    //These loops sets all of the squares to the colour and states set in the parameters
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {

        sendNew = true;


        squares[i][j] = pixelState;

        squaresR[i][j] = red;
        squaresG[i][j] = green;
        squaresB[i][j] = blue;
      }
    }
  }
}