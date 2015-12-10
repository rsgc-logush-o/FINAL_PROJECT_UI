//This is the arduino class
//It handles sending new data to the arduino driving the display

class Arduino
{
  //This is the update function for the class, it is called every half second IF there is new data available
  void update()
  {
    //These loops handle sending the data to the arduino, it loops through each square and its R, G and B value   
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {
        for (int k = 0; k < 3; k++)
        {
          //This switch statement handles what colour value it is sending to the display
          switch(k)
          {
          case 0:
            //The reason that it gets the gamma value is due to the way the eye interprets light in a non-linear fashion and it adjusts for that
            myPort.write((byte)gamma[squaresR[i][j]]);

            break;

          case 1:
            //The reason that it gets the gamma value is due to the way the eye interprets light in a non-linear fashion and it adjusts for that
            myPort.write((byte)gamma[squaresG[i][j]]);

            break;

          case 2:
            //The reason that it gets the gamma value is due to the way the eye interprets light in a non-linear fashion and it adjusts for that
            myPort.write((byte)gamma[squaresB[i][j]]);

            break;
          }
        }
      }
    }
  }
  //This is the gamma array, due to the way the eye sees light in a non linear fashion this adjusts for that, it makes the colours much more accurate on the display
  int gamma[] = {
    0, 0, 0, 0, 0, 1, 1, 2, 3, 4, 5, 6, 8, 10, 12, 15};
}