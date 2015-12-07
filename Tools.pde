class Tools
{
  PImage toolImageTrue;
  PImage toolImageFalse;
  int toolX, toolY;
  boolean isStatic;
  boolean whichState;
  Tools(String locationTrue, String locationFalse, int toolX_, int toolY_, boolean isStatic_, boolean whichState_)
  {
   toolImageTrue = loadImage(locationTrue);
   toolImageFalse = loadImage(locationFalse);
   toolX = toolX_;
   toolY = toolY_;
   isStatic = isStatic_;
   whichState = whichState_;
  }
  
  void update()
  {
    if(isStatic == false)
    {
      
      if(isTouching() == true) image(toolImageTrue, toolX, toolY, 30, 30);
      else image(toolImageFalse, toolX, toolY, 30, 30);
      
    }else
    {
      if(whichState == false) image(toolImageFalse, toolX, toolY, 30, 30);
      else image(toolImageTrue, toolX, toolY, 30, 30);
    }
  }
  
  boolean isTouching()
  {
    if(mouseX < toolX + 30 && mouseX > toolX && mouseY < toolY + 30 && mouseY > toolY) return true;
    else return false;
  }
}