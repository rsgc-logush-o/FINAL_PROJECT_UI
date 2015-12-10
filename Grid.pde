//This is the grid class
//It is responsible for displaying all of the squares in the canvas

class Grid
{
  //This is the update function for the grid class, it is called every loop
  void update()
  {
    //This loop loops through each square in the array and displays it
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {

        //Checking if the grid tool is true, if so there will be grid lines on the canvas. If not there will not be any grid lines
        if (grid.whichState == true)stroke(48);
        else if (grid.whichState == false)noStroke();

        //Filling the square that will be displayed with it R, G, and B value from the array. They are multiplied by 17 because they are saved as 4 bit colour which is sent to the display but displayed as 8 bit colour on the canvas
        fill(squaresR[i][j] * 17, squaresG[i][j] * 17, squaresB[i][j] * 17);
        rect(i*23, j*23, 23, 23);
      }
    }
  }
}