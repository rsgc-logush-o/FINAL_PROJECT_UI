//This class is for the second window which has the photo selector
//To do this you have to create a second applet that opens in a new frame

class SecondWindow extends PApplet
{

  //This is the image that will be displayed in the selector
  PImage imageToDisplay;

  //This is the size of the selector. The selector chooses which part of the image will be displayed
  int sizeOfSelector = 1;

  //This is the location of the image that is loaded
  String location;

  //This is the constructor for the class, it takes the location of the image when declared
  SecondWindow(String location_)
  {
    location = location_;
  }

  //This is the settings function. It is the same as setup(), but you need to use this instead of setup
  public void settings()
  {
    //Loading the image to the PImage from the location
    imageToDisplay = loadImage(location);
    //Setting the size of the program window to the size of the image
    size(imageToDisplay.width, imageToDisplay.height);
  }

  public void draw()
  {
    background(255);

    //Drawing the image
    image(imageToDisplay, 0, 0);

    //Setting the selector square which shows the region of the image that is being selected, the colour is grey and it is semi transparent
    fill(128, 128);
    //Draws the selector box based on the location of the mouse and the size of the selector
    rect(mouseX, mouseY, sizeOfSelector * 32, sizeOfSelector * 32);
    //Calls the setSquares function
    setSquares();

    //If the loadPhoto tool is no longer selected close the window
    if (loadPhoto.whichState == false)
    {
      stop();
      surface.setVisible(false);
    }
  }


  void mouseWheel(MouseEvent wheel)
  {
    //This sets the selector size based on the mousewheel movement, it is constrained between 1 and 50 so no negatives happen and more than 50 is unnecessary
    sizeOfSelector -= wheel.getCount();

    sizeOfSelector = constrain(sizeOfSelector, 1, 50);
  }

  //This is the setSquares function, it sets the squares to the correct colour based on what the selector is hovering over
  void setSquares()
  {
    //Telling the program there is new information to be sent
    sendNew = true;

    //This retreives the pixels from the display which loads into an array
    imageToDisplay.loadPixels();

    //This for loop contains the code that sets the correct squares to the colours
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++)
      {
        squares[j][i] = true;

        //These hold the averages of each colour that the square is set to, this is for downsampling the image resolution
        int redAvg = 0;
        int greenAvg = 0;
        int blueAvg = 0;

        //This loop gathers information from the correct pixels, and averages them to downsample the resolution
        for (int k = 0; k < sizeOfSelector; k++)
        {
          for (int h = 0; h < sizeOfSelector; h++)
          {
            //This is if the selector is outside of the image, it prevents an out of bounds runtime error and sets the squares black
            if (mouseX + h + j * sizeOfSelector >= imageToDisplay.width || (mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h) >= imageToDisplay.height*imageToDisplay.width)
            {
              redAvg += 0;
              greenAvg += 0;
              blueAvg += 0;
            } else {
              //This gets the average of the pixels
              redAvg += (int)red(imageToDisplay.pixels[(mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h)]);
              greenAvg += (int)green(imageToDisplay.pixels[(mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h)]);
              blueAvg += (int)blue(imageToDisplay.pixels[(mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h)]);
            }
          }
        }
        //Sets the actual squares to the averaged pixels
        squaresR[j][i] = redAvg/(sizeOfSelector*sizeOfSelector)/17;
        squaresG[j][i] = greenAvg/(sizeOfSelector*sizeOfSelector)/17;
        squaresB[j][i] = blueAvg/(sizeOfSelector*sizeOfSelector)/17;
      }
    }
  }
}