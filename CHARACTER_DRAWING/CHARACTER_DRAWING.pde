//This is a program that will create boolean bitmaps for characters that you draw on it

//This is the array of strings to print out to the console for the boolean bitmaps
String stringToSave[];
//This keeps track of what is displayed on the canvas
boolean display[][];


//The coordinates of the place the mouse was clicked
int mouseClickedX;
int mouseClickedY;



void setup()
{
  //Initializng the stringToSave array and the display array
  display = new boolean[8][5];
  stringToSave = new String[8];

  size(140, 230);
}

void draw()
{
  background(255);
  //call the update function to update the window
  update();
}


void update()

  //Checks if each circle is true if so it will display it as black if not as white
{
  for (int i = 0; i < 8; i++)
  {
    for (int j = 0; j < 5; j++)
    {
      if (display[i][j] == true) fill(0);
      else fill(255);

      ellipse(j*30 + 10, i*30 + 10, 20, 20);
    }
  }
}

void mousePressed()
{
  //Setting the mouseClicked coordinates as mouseX and mouseY
  mouseClickedX = mouseX;
  mouseClickedY = mouseY;

  //This loops through each circle on the display, and checks if the mouse was touching it when it was clicked
  for (int i = 0; i < 8; i++)
  {
    for (int j = 0; j < 5; j++)
    {
      if (sqrt(sq((i*30 + 10)-mouseClickedY) + sq((j*30 + 10) - mouseClickedX)) < 10)
      {
        display[i][j] = true;
      }
    }
  }
}

void keyPressed()
{
  //If the key pressed was c clear the display
  if (key == 'c')
  {
    for (int i = 0; i < 8; i++)
    {
      for (int j = 0; j < 5; j++)
      {
        display[i][j] = false;
      }
    }
  } else if (key == 's')//If the key pressed was call the saveTheBytes function to print the boolean array to the console
  {
    saveTheBytes();
  }
}


void saveTheBytes()
{
  //The start of the array
  println("{");

  //This loops through each of the columns and find the booleans in each and set the string to print them accordingly
  for (int i = 0; i < 8; i++)
  {
    stringToSave[i] = "  {";

    for (int j = 0; j < 5; j++)
    {
      if (j < 4 && j > 0)
      {
        if (display[i][j] == true) stringToSave[i] += " true,";
        else stringToSave[i] += " false,";
      } else if (j == 4)
      {
        if (display[i][j] == true) stringToSave[i] += " true}";
        else stringToSave[i] += " false}";
      } else
      {
        if (display[i][j] == true) stringToSave[i] += "true,";
        else stringToSave[i] += "false,";
      }
    }
    //This prints out each of the strings
    if (i < 7)stringToSave[i] += ",";
    println(stringToSave[i]);
  }


  println("},");
}

void mouseDragged()
{
  //This updates the display if the mouse is dragged over the pixel
  for (int i = 0; i < 8; i++)
  {
    for (int j = 0; j < 5; j++)
    {
      if (sqrt(sq((i*30 + 10)-mouseY) + sq((j*30 + 10) - mouseX)) < 10)
      {
        display[i][j] = true;
      }
    }
  }
}