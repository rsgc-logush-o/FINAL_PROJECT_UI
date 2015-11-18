//THIS IS THE COLOUR CLASS
//IT DISPLAYS THE COLOUR PALLET AND A SLIDER TO SELECT THE COLOUR YOU WANT
//THE ACTUAL SELECTION IS HANDELED IN THE MOUSE CLASS
//ALSO HANDLES THE ENTIRE SIDEBAR MENU

class Colour
{



  void update()//THE UPDATE FUNCTION WITH NO PARAMETERS NEEDED
  {  
    
    
    
    stroke(48);//SETTING THE STROKE SIZE
    
    fill(255);//SETTING THE COLOUR OF THE ENTIRE SIDEBAR MENU BACKGROUND
    rect(736, 0, 164, 736);//DRAWING A RECTANGLE FOR THE ENTIRE SIDEBAR MENU BACKGROUND
    for (int i = 0; i < 3; i++)//A FOR LOOP THAT LOOPS THROUGH THE BRUSH'S COLOUR VALUE FOR RED GREEN AND BLUE AND DISPLAYS THE VALUE AS A NUMBER AND AS A COLOUR IN A RECTANGLE ALONG WITH THE SLIDER POSITION
    {

      fill(255);//SETTING THE COLOUR OF THE RECTAGLE THAT THE TEXT OF THE COLOUR VALUE WILL BE DISPLAYED
      rect((736+i*20+(i+1)*20)-8, 163, 35, 20);//DRAWING THE RECTANGLE THAT THE TEXT OF THE COLOUR VALUE WILL BE DISPLAYED IN

      fill(0);//SETTING THE COLOUR OF THE TEXT
      textSize(16);//SETTING THE TEXT SIZE
      text(colours[i], (736+i*20+(i+1)*20)-5, 180);//DISPLAYING THE DECIMAL VALUE OF THE COLOUR

      if (i == 0) fill(colours[i], 0, 0);//IF I IS ZERO FILL THE RECTANGLE WITH THE COLOUR VALUE OF RED
      if (i == 1) fill(0, colours[i], 0);//IF I IS ONE FILL THE RECTANGLE WITH THE COLOUR VALUE OF GREEN
      if (i == 2) fill(0, 0, colours[i]);//IF I IS TWO FILL THE RECTANGLE WITH THE COLOUR VALUE OF BLUE



      rect(736+i*20+(i+1)*20, 200, 20, 255);//DRAW THE RECTANGLE AT PROPER POSITION DEPENDING ON I TO DISPLAY THE VALUE OF THE COLOUR
      fill(250);//SET THE COLOUR OF THE SLIDER LINE

      line(736+i*20+(i+1)*20-5, colours[i]+200, 736+i*20+(i+1)*20+25, colours[i]+200);//DRAW THE SLIDER LINE AT THE DEPENDING ON THE VALUE OF THE COLOUR AND DEPENDING ON THE VALUE OF I
      
    }
    fill(colours[0], colours[1], colours[2]);//SET THE COLOUR OF THE RECTANGLE TO SHOW THE OVERALL COLOUR OF THE BRUSH

    rect(756, 475, 100, 20);//DRAW THE RECTANGLE TO SHOW THE OVERALL COLOUR OF THE BRUSH
    
    fill(255);//SET THE COLOUR OF THE RECTANGLE THAT THE BRUSH SIZE SLIDER IS ON
    
    
    rect(756, 600, 100, 20);//DRAW THE RECTANGLE THAT THE BRUSH SIZE SLIDER IS ON
    
  
    
    line(brushSize*10 + 756, 595, brushSize*10 + 756, 625);//DRAW THE SLIDER TO SHOW AND SELECT THE SIZE OF THE BRUSH
    
    rect(791, 570, 30, 20);//DRAW THE RECTANGLE THAT THE DECIMAL VALUE OF THE BRUSH SIZE WILL BE DISPLAYED IN
    
    fill(0);//SET THE COLOUR OF THE TEXT DISPLAYING THE DECIMAL VALUE OF THE BRUSH SIZE
    
    text(brushSize, 794, 587);//THE TEXT TO DISPLAY THE DECIMAL VALUE OF THE BRUSHSIZE
    
    if(eraser == true)//CHECKING IF THE ERASER IS TRUE IN WHICH CASE THE ERASER BOX WILL BE FILLED IN BLACK
    {
     fill(0);//SETTING THE COLOUR OF THE RECTANGLE BOX WHICH DISPLAYS WHETHER THE ERASER IS SELECTED OR NOT TO BLACK TO SHOW THAT THE ERASER IS SELECTED
    }else{
      fill(255);//SETTING THE COLOUR OF THE RECTANGLE BOX WHICH DISPLAYS WHETHER THE ERASER IS SELECTED OR NOT TO WHITE TO SHOW THAT THE ERASER IS NOT SELECTED
    }
    rect(756, 700, 20, 20);//DRAWING THE CHECKBOX RECTANGLE FOR THE ERASER TOOL
    
    if(bucket == true)//CHECKING IF THE BUCKET TOOL IS SELECTED
    {
      fill(0);//SETTING THE COLOUR OF THE RECTANGLE BOX WHICH DISPLAYS WHETHER THE BUCKET IS SELECTED OR NOT TO BLACK TO SHOW THAT THE BUCKET IS SELECTED
    }else{
    
      fill(255);//SETTING THE COLOUR OF THE RECTANGLE BOX WHICH DISPLAYS WHETHER THE BUCKET IS SELECTED OR NOT TO WHITE TO SHOW THAT THE BUCKET IS NOT SELECTED
    
    }
      rect(796, 700, 20, 20);//DRAWING THE CHECKBOX RECTANGLE FOR THE BUCKET TOOL 
      
      if (grid == true)fill(0);//CHECKING IF THE BUCKET TOOL IS SELECTED AND IF IT IS FILLING THE CHECKBOX BLACK TO INDICATE IT IS SELECTED
      else fill(255);//IF IT IS NOT SELECTED IT FILLS THE BUCKET TOOL CHECKBOX WHITE TO INDICATE IT IS NOT SELECTED
      
      rect(756, 20, 20, 20);//DRAWING THE BUCKET TOOL SELECT BOX
      
      
       textSize(12);//SETTING THE TEXT SIZE TO DISPLAY THE MOUSE X AND Y POSITIONS
    fill(0);//SETTING THE TEXT COLOUR TO BLACK
    
    text("mouseX:" + mouseX, 750, 670);//WRITING THE X COORDINATE OF THE MOUSE
    text("mouseY:" + mouseY, 750, 690);//WRITING THE Y COORDINATE OF THE MOUSE
  }
  
  
  
}