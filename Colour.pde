class Colour
{



  void update()
  {  
    
    
    
    stroke(48);
    
    fill(255);
    rect(736, 0, 164, 736);
    for (int i = 0; i < 3; i++)
    {

      fill(255);
      rect((736+i*20+(i+1)*20)-8, 163, 35, 20);

      fill(0);
      textSize(16);
      text(colours[i], (736+i*20+(i+1)*20)-5, 180);

      if (i == 0) fill(colours[i], 0, 0);
      if (i == 1) fill(0, colours[i], 0);
      if (i == 2) fill(0, 0, colours[i]);



      rect(736+i*20+(i+1)*20, 200, 20, 255);
      fill(250);

      line(736+i*20+(i+1)*20-5, colours[i]+200, 736+i*20+(i+1)*20+25, colours[i]+200);     
      
    }
    fill(colours[0], colours[1], colours[2]);

    rect(756, 475, 100, 20);
    
    fill(255);
    
    
    rect(756, 600, 100, 20);
    
    fill(255);
    
    line(brushSize*10 + 756, 595, brushSize*10 + 756, 625);
    
    rect(791, 570, 30, 20);
    
    fill(0);
    
    text(brushSize, 794, 587);
    
    if(eraser == true)
    {
     fill(0); 
    }else{
      fill(255);
    }
    rect(756, 700, 20, 20);
    
    if(bucket == true)
    {
      fill(0);
    }else{
    
      fill(255);
    
    }
      rect(796, 700, 20, 20);
      
      if (grid == true)fill(0);
      else fill(255);
      
      rect(756, 20, 20, 20);
      
      
       textSize(12);
    fill(0);
    
    text("mouseX:" + mouseX, 750, 670);
    text("mouseY:" + mouseY, 750, 690);
  }
  
  
  
}