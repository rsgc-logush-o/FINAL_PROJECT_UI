//This is the colour class
//It handles displaying the sidebar menu except for the tools, that is handled by the tool class

class Colour
{
  void update()
  {  


    //This sets up the sidebar background
    stroke(48);
    fill(255);
    rect(736, 0, 164, 736);

    //This displays the colour selectors, along with the slider bar that goes on them
    for (int i = 0; i < 3; i++)
    {
      //This is the text box that says the colours value (0-15) and the text
      fill(255);
      rect((736+i*20+(i+1)*20)-8, 163, 35, 20);
      fill(0);
      textSize(16);
      text(colours[i], (736+i*20+(i+1)*20)-5, 180);

      //This displays the colour selectors and the slider for them
      if (i == 0) fill(colours[i] * 17, 0, 0);
      if (i == 1) fill(0, colours[i] * 17, 0);
      if (i == 2) fill(0, 0, colours[i] * 17);
      rect(736+i*20+(i+1)*20, 200, 20, 255);
      fill(250);
      line(736+i*20+(i+1)*20-5, colours[i] * 17 +200, 736+i*20+(i+1)*20+25, colours[i] * 17 +200);
    }

    //This is the rectangle in the menu that shows the colour of the brush
    fill(colours[0] * 17, colours[1] * 17, colours[2] * 17);
    rect(756, 475, 100, 20);

    //This shows the size of the brush in a box with the decimal value and a slider along a bar
    fill(255);
    rect(756, 600, 100, 20);
    line(brushSize*10 + 756, 595, brushSize*10 + 756, 625);
    rect(791, 570, 30, 20);
    fill(0);
    text(brushSize, 794, 587);

    //Displays the mouse X and Y coordinates
    textSize(12);
    fill(0);
    text("mouseX:" + mouseX, 750, 670);
    text("mouseY:" + mouseY, 750, 690);
  }
}