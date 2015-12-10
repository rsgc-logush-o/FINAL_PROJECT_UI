//This is the tools class
//It handles all of the tools

class Tools
{
  //These are the two images that are used for each tool. True is used when it is clicked or hovered over (defined by isStatic). False is used when not in use
  PImage toolImageTrue;
  PImage toolImageFalse;

  //These two integers are for the location of the tool icon
  int toolX, toolY;

  //This boolean knows whether the button only goes true when hovered over or when clicked and stays true. False for the former true for the latter.
  boolean isStatic;

  //This boolean is used for setting the state of the tool. It is only used when isStatic == true.
  boolean whichState;

  //This is the constructor for the tool class.
  Tools(String locationTrue, String locationFalse, int toolX_, int toolY_, boolean isStatic_, boolean whichState_)
  {
    //These are the two PImages, they load from the locations defined when the new Tool object is declared
    toolImageTrue = loadImage(locationTrue);
    toolImageFalse = loadImage(locationFalse);

    //The tool coordinates are defined when a new Tool object is declared
    toolX = toolX_;
    toolY = toolY_;

    //The isStatic and whichState are defined when a new Tool object is declared
    isStatic = isStatic_;
    whichState = whichState_;
  }

  //This is the update function for the classes. It is called every time in the draw loop for every instance of the class. It is responsible displaying the tools on the menu screen
  void update()
  {
    //This is called if the tool is not static
    if (isStatic == false)
    {
      //Checks if the mouse is touching the tool, if it is it sets the tool to display as true if not it displays as false
      if (isTouching() == true) image(toolImageTrue, toolX, toolY, 30, 30);
      else image(toolImageFalse, toolX, toolY, 30, 30);
    }
     else//This is called if the tool is static
    {
      //This checks the state of the tool. If it is true it will display it as true if it is false it will display it as false
      if (whichState == false) image(toolImageFalse, toolX, toolY, 30, 30);
      else image(toolImageTrue, toolX, toolY, 30, 30);
    }
  }

  //This is the isTouching function it checks if the mouse is touching the tool
  boolean isTouching()
  {
    //Checks if it within the bounds of the tool, if true it will return true if not will return false
    if (mouseX < toolX + 30 && mouseX > toolX && mouseY < toolY + 30 && mouseY > toolY) return true;
    else return false;
  }
}