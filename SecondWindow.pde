class SecondWindow extends PApplet
{
  
 PImage imageToDisplay;
 int sizeOfSelector = 1;
 String location;
 SecondWindow(String location_)
 {
   location = location_;
 }
public void settings()
 {
   imageToDisplay = loadImage(location);
  size(imageToDisplay.width, imageToDisplay.height); 
    
 }
  
public void draw()
 {
   background(255);
   image(imageToDisplay, 0, 0);
   fill(128, 128);
   rect(mouseX, mouseY, sizeOfSelector * 32, sizeOfSelector * 32);
   setSquares();
  if(loadPhoto.whichState == false)
  {
   stop();
   surface.setVisible(false);
  }
 }
  
 void mouseWheel(MouseEvent wheel)
 {
   sizeOfSelector -= wheel.getCount();
    
   sizeOfSelector = constrain(sizeOfSelector, 1, 50);
 }
 
 void setSquares()
 {
   sendNew = true;
  
   imageToDisplay.loadPixels();
  for(int i = 0; i < 32; i++)
  {
   for(int j = 0; j < 32; j++)
   {
     squares[j][i] = true;
     color[] c;
     int redAvg = 0;
     int greenAvg = 0;
     int blueAvg = 0;
     for(int k = 0; k < sizeOfSelector; k++)
     {
       for(int h = 0; h < sizeOfSelector; h++)
       {
         if(mouseX + h + j * sizeOfSelector >= imageToDisplay.width || (mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h) >= imageToDisplay.height*imageToDisplay.width)
         {
           redAvg += 0;
         greenAvg += 0;
         blueAvg += 0;
         }else{
         
         redAvg += (int)red(imageToDisplay.pixels[(mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h)]);
         greenAvg += (int)green(imageToDisplay.pixels[(mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h)]);
         blueAvg += (int)blue(imageToDisplay.pixels[(mouseY*imageToDisplay.width + mouseX) + (i * sizeOfSelector*imageToDisplay.width + j * sizeOfSelector) + (k * imageToDisplay.width + h)]);
         }
       }
     }
     squaresR[j][i] = redAvg/(sizeOfSelector*sizeOfSelector)/17;
     squaresG[j][i] = greenAvg/(sizeOfSelector*sizeOfSelector)/17;
     squaresB[j][i] = blueAvg/(sizeOfSelector*sizeOfSelector)/17;
   }
  }
 }
}