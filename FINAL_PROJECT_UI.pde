
//TRY ADDING INTERPOLATION FOR LOST PIXELS

boolean[][] squares;

int[] colours;
int[][] squaresR;
int[][] squaresG;
int[][] squaresB;
boolean[][] isOver;


Grid g = new Grid();
Key k = new Key();
Mouse m = new Mouse();
Colour c = new Colour();  






void setup()
{
  isOver = new boolean[32][32];
  
  squaresR = new int[32][32];
  squaresG = new int[32][32];
  squaresB = new int[32][32];

  squares = new boolean[32][32];
  colours = new int[3];

  size(876, 736);

  stroke(48);

  noSmooth();

  for (int i = 0; i < 32; i++)
  {
    for (int j = 0; j < 32; j++)
    {
      squares[i][j] = false;
      isOver[i][j] = false;
    }
  }
}


void draw()
{
  g.update();
  c.update();
  //k.update();
  // m.update();
}

void keyPressed()
{
  k.update(key);
}



void mouseDragged()
{
   m.update();
}

void mousePressed()
{
  m.update();
}