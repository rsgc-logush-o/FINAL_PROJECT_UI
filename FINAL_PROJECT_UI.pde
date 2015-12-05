import processing.serial.*;



//////////////////////////////////////////////////
//                                              //
//               OLIVER LOGUSH                  //
//                   2015                       //
//  USER INTERFACE FOR A 32x32 RGB LED DISPLAY  //
//                                              //
//                                              //
//                                              //
//////////////////////////////////////////////////






boolean[][] squares; //THIS IS THE MULTIDIMENSIONAL ARRAY OF BOOLEANS TO KNOW IF THE SQUARES IN THE DISPLAY ARE ON OR OFF

int[] colours; //THE COLOUR VALUES FOR EACH R G B OF THE COLOUR SELECTION SLIDERS
int[][] squaresR;//A MULTIDIMENSIONAL ARRAY CONTAINING THE RED VALUE (0-255) OF EACH SQUARE
int[][] squaresG;//A MULTIDIMENSIONAL ARRAY CONTAINING THE GREEN VALUE (0-255) OF EACH SQUARE
int[][] squaresB;//A MULTIDIMENSIONAL ARRAY CONTAINING THE BLUE VALUE (0-255) OF EACH SQUARE
boolean[][] isOver;//THIS IS A MULTI DIMENSIONAL BOOLEAN ARRAY TO KNOW WHICH SQUARE THE MOUSE IS OVER
Table save2Table;//THIS IS A TABLE OBJECT THAT WILL BE USED TO SAVE TO A .CSV FILE TO SAVE DRAWINGS
TableRow[][] saveRow;//A MULTIDIMENSIONAL ARRAY OF VALUES OF THE R G B OF EACH SQUARE TO SAVE TO THE .CSV
TableRow[][] readRow;//A MULTIDIMENSIONAL ARRAY OF VALUES OF THE R G B OF EACH SQUARE TO READ FROM THE .CSV

boolean bucket = false;//TO KNOW WHETHER THE FILL TOOL IS ENABLED OR NOT

boolean eraser = false;//TO KNOW WHETEHR THE ERASER TOOL IS ENABLED OR NOT

boolean grid = true;//TO KNOW WHETHER TO HAVE A GRID OVERLAY OR NOT

int brushSize = 1;//THE SIZE OF THE BRUSH (0-10px)

Serial myPort;//THE SERIAL COMMUNICATION OBJECT

Grid g = new Grid();//DECLARING THE NEW GRID OBJECT
Key k = new Key();//DECLARING THE NEW KEY OBJECT
Mouse m = new Mouse();//DECLARING THE NEW MOUSE OBJECT
Colour c = new Colour();//DECLARING THE NEW COLOUR OBJECT
Save s = new Save();//DECLARING THE NEW SAVE OBJECT
Read r = new Read();//DECLARING THE NEW READ OBJECT
Arduino a = new Arduino();


int prevMillis = 0;
  int currMillis = 0;
 

void setup()
{
  // selectInput("select", "fileSelected");
  
 
  
  isOver = new boolean[32][32];//SETTING THE SIZE OF THE isOver TWO DIMENSIONAL ARRAY
  
  squaresR = new int[32][32];//SETTING THE SIZE OF THE squaresR TWO DIMENSIONAL ARRAY
  squaresG = new int[32][32];//SETTING THE SIZE OF THE squaresG TWO DIMENSIONAL ARRAY
  squaresB = new int[32][32];//SETTING THE SIZE OF THE squaresB TWO DIMENSIONAL ARRAY

  squares = new boolean[32][32];//SETTING THE SIZE OF THE squares TWO DIMENSIONAL ARRAY
  colours = new int[3];//SETTING THE SIZE OF THE colours ARRAY
  
  saveRow = new TableRow[32][32];//SETTING THE SIZE OF THE saveRow TWO DIMENSIONAL ARRAY
  
  save2Table = new Table();//DECLARING THE save2Table OBJECT
  
  readRow = new TableRow[32][32];//SETTING THE SIZE OF THE readRow TWO DIMENSIONAL ARRAY
  
  
  
  
    save2Table.addColumn("x");//ADDING A COLUMN TO STOR THE X VALUE ON THE save2Table OBJECT
    save2Table.addColumn("y");//ADDING A COLUMN TO STOR THE Y VALUE ON THE save2Table OBJECT
    save2Table.addColumn("r");//ADDING A COLUMN TO STOR THE R VALUE ON THE save2Table OBJECT
    save2Table.addColumn("g");//ADDING A COLUMN TO STOR THE G VALUE ON THE save2Table OBJECT
    save2Table.addColumn("b");//ADDING A COLUMN TO STOR THE B VALUE ON THE save2Table OBJECT



  size(876, 736); //SETTING THE SIZE OF THE CANVAS THAT THE PROGRAM WILL RUN ON

 

  noSmooth();//THIS IS DONE SO THAT THE GRID LINES ARE NOT ANTI-ALIASED
  
  //|SETTING ALL OF THE VALUES FALSE ON THE BOOLEAN ARRAYS|

  for (int i = 0; i < 32; i++)
  {
    for (int j = 0; j < 32; j++)
    {
      squares[i][j] = false;
      isOver[i][j] = false;
    }
  }
  
  myPort = new Serial(this, Serial.list()[2], 9600);
 
  myPort.bufferUntil('\n');
   println(Serial.list()[1]);
}




void draw()
{
  g.update();//CALLING ON THE UPDATE FUNCTION IN THE G OBJECT OF THE GRID CLASS
  c.update();//CALLING ON THE UPDATE FUNCTION IN THE C OBJECT OF THE COLOUR CLASS
 currMillis = millis();
 println(1);
  if(currMillis - prevMillis > 1000)
  {
    println(2);
  a.update();
  prevMillis = millis();
  }
  
}

void keyPressed()
{
  if(key == 's' || key == 'S')selectOutput("select", "outSelect"); //IF THE KEY IS S CALL ON THE outSelect FUNCTION WITH THE PARAMETERS OF THE FILE YOU SELECTED AFTER THE POP UP WINOW TO SELECT A FILE TO SAVE TO
  if(key == 'r' || key == 'R')selectInput("select", "fileSelect"); //IF THE KEY IS R CALL ON THE fileSelect FUNCTION WITH THE PARAMETERS OF THE FILE YOU SELECTED AFTER THE POP UP WINOW TO SELECT A FILE TO READ FROM
  
  k.update(key);//CALL ON THE UPDATE FUNCTION OF THE K OBJECT OF THE KEY CLASS WITH THE PARAMETER OF THE KEY THAT YOU PRESSED
}



void mouseDragged()
{
   m.update();//CALL ON THE UPDATE FUNCTION OF THE M OBJECT OF THE MOUSE CLASS IF THE MOUSE IS DRAGGED
}

void mousePressed()
{
  m.update();//CALL ON THE UPDATE FUNCTION OF THE M OBJECT OF THE MOUSE CLASS IF THE MOUSE IS CLICKED
}

 void fileSelect(File selection) 
 {
 r.readVal  = loadTable(selection.getAbsolutePath(), "header");//SETTING THE TABLE readVal IN THE R OBJECT OF THE READ CLASS TO THE TABLE LOADED IN FROM THE .CSV FILE
 
  r.read();//CALLING THE read FUNCTION OF THE R OBJECT OF THE READ CLASS
 
}


void outSelect(File selection)
{
  s.saveToTable(selection.getAbsolutePath());//CALLING THE saveToTable FUNCTION OF THE S OBJECT IN THE SAVE CLASS WITH THE PARAMETERS OF THE FILE PATH OF THE FILE THE USER SELECTED TO READ FROM
}