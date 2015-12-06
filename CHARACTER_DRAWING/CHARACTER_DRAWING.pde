String stringToSave[];
boolean display[][];
int byteToSave[];
int mouseClickedX;
int mouseClickedY;



void setup()
{
  display = new boolean[8][5];
  stringToSave = new String[8];
 // byteToSave = new byte[8];
  size(140, 230);
}

void draw()
{
 background(255);
 update(); 
}


void update()
{
 for(int i = 0; i < 8; i++)
 {
  for(int j = 0; j < 5; j++)
  {
   if(display[i][j] == true) fill(0);
   else fill(255);
   
     ellipse(j*30 + 10, i*30 + 10, 20, 20);
   
  }
 }
}
//00111111

//01001001
void mousePressed()
{
  mouseClickedX = mouseX;
  mouseClickedY = mouseY;
  
  for(int i = 0; i < 8; i++)
  {
    for(int j = 0; j < 5; j++)
    {
      if(sqrt(sq((i*30 + 10)-mouseClickedY) + sq((j*30 + 10) - mouseClickedX)) < 10)
      {
       display[i][j] = true; 
      }
    }
  }
}

void keyPressed()
{
 if(key == 'c')
 {
  for(int i = 0; i < 8; i++)
  {
   for(int j = 0; j < 5; j++)
   {
     display[i][j] = false;
   }
  }
 }else if(key == 's')
 {
   saveTheBytes();
 }
}


void saveTheBytes()
{
  
  println("{");
  
  byteToSave = new int[5];
 for(int i = 0; i < 8; i++)
 {
   stringToSave[i] = "  {";
   
  for(int j = 0; j < 5; j++)
  {
    if(j < 4 && j > 0)
    {
      if(display[i][j] == true) stringToSave[i] += " true,";
      else stringToSave[i] += " false,";
    }else if(j == 4)
    {
      if(display[i][j] == true) stringToSave[i] += " true}";
      else stringToSave[i] += " false}";
    }else
    {
      if(display[i][j] == true) stringToSave[i] += "true,";
      else stringToSave[i] += "false,";
    }
    
    
    
  }
  //println(byteToSave[i]);
 if(i < 7)stringToSave[i] += ",";
  println(stringToSave[i]);
 }
 
 
 println("},");
 //saveStrings("charactersToPrint.txt" , stringToSave);
 

 
 
 
}

void mouseDragged()
{
  for(int i = 0; i < 8; i++)
  {
    for(int j = 0; j < 5; j++)
    {
      if(sqrt(sq((i*30 + 10)-mouseY) + sq((j*30 + 10) - mouseX)) < 10)
      {
       display[i][j] = true; 
      }
    }
  }
}