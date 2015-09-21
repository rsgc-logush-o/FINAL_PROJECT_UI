boolean[][] squares;
int[][] squaresR;
int[][] squaresG;
int[][] squaresB;
//boolean[][] squaresBuffer;
int[] colours;


void setup()
{
  size(876, 736);
  squares = new boolean[32][32];
  squaresR = new int[32][32];
  squaresG = new int[32][32];
  squaresB = new int[32][32];
  colours = new int[3];
 // squaresBuffer = new boolean[32][32];
  
  stroke(48);
  
  noSmooth();
  
  for (int i = 0; i < 32; i++)
  {
    for (int j = 0; j < 32; j++)
    {
      squares[i][j] = false;
    }
  }
  
}

void draw()
{
 for (int i = 0; i < 32; i++)
 {
   for(int j = 0; j < 32; j++)
   {
     if(squares[i][j] == true)
     {
       fill(squaresR[i][j], squaresG[i][j], squaresB[i][j]);
     }
     else
     {
      fill(0); 
     }
     rect(i*23, j*23, 23, 23);
     
   }
   
   
   
   
   
 }
 fill(255);
   rect(736, 0, 164, 736);
   for(int i = 0; i < 3; i++)
   {
     
     fill(255);
     rect((736+i*20+(i+1)*20)-8, 163, 35, 20);
     
     fill(0);
     textSize(16);
     text(colours[i], (736+i*20+(i+1)*20)-5, 180);
     
      if(i == 0) fill(colours[i], 0, 0);
      if(i == 1) fill(0, colours[i], 0);
      if(i == 2) fill(0, 0, colours[i]);
      
      
     
     rect(736+i*20+(i+1)*20, 200, 20, 255);
   }
   fill(colours[0], colours[1], colours[2]);
   
  rect(756, 475, 100, 20);
 
}



void mouseReleased()
{
  if(mouseX < 776 && mouseX > 756 && mouseY < 455 && mouseY > 200)
  {
    colours[0] = int(map(mouseY, 200, 455, 0, 255));
    
    
  }else if(mouseX < 816 && mouseX > 796 && mouseY < 455 && mouseY > 200 )
  {
    colours[1] = int(map(mouseY, 200, 455, 0, 255));
  }else if(mouseX < 856 && mouseX > 836 && mouseY < 455 && mouseY > 200)
  {
    colours[2] = int(map(mouseY, 200, 455, 0, 255));
  }
  
  if(mouseX < 736 && mouseY < 736)
  {
     int xSquareOver = int(map(mouseX, 0, 736, 0, 32));
   xSquareOver = constrain(xSquareOver, 0, 32);
   int ySquareOver = int(map(mouseY, 0, height, 0, 32));
   ySquareOver  = constrain(ySquareOver, 0, 32);
   
   
   
   if(squares[xSquareOver][ySquareOver] == true)
   {
    squares[xSquareOver][ySquareOver] = false;
   // fill(255);
   }else if(squares[xSquareOver][ySquareOver] == false)
   {
     squares[xSquareOver][ySquareOver] = true;
     
     squaresR[xSquareOver][ySquareOver] = colours[0];
     squaresG[xSquareOver][ySquareOver] = colours[1];
     squaresB[xSquareOver][ySquareOver] = colours[2];
    // fill(0);
   }
  } 
   
}


void keyPressed()
{
  if(key == 'c' || key == 'C')
  {
   for (int i = 0; i < 32; i++) 
   {
     for (int j = 0; j < 32; j++)
     {
       squares[i][j] = false;
     }
   }
  }
  if (key == 'a' || key == 'A')
  {
    for (int i = 0; i < 32; i++)
    {
     for (int j = 0; j < 32; j++)
     {
       squares[i][j] = true;
       
       squaresR[i][j] = colours[0];
       squaresG[i][j] = colours[1];
       squaresB[i][j] = colours[2];
       
     }
    }
  }
  
}