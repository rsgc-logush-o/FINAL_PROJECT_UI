import processing.serial.*;



//////////////////////////////////////////////////
//                                              //
//               OLIVER LOGUSH                  //
//                   2015                       //
//  USER INTERFACE FOR A 32x32 RGB LED DISPLAY  //
//                Version 1.0                   //
//                                              //
//                                              //
//////////////////////////////////////////////////




SecondWindow image;

//These are the arrays that hold the square values for colour and whether they are on or not
boolean[][] squares;
int[][] squaresR;
int[][] squaresG;
int[][] squaresB;

//This holds the colour values on the selector for R, G, and B
int[] colours; 

//This lets the program know whether to send new data or not
boolean sendNew = false;


//These are the tables and table rows that hold the data to save and the data to load from .csv files
Table save2Table;
TableRow[][] saveRow;
TableRow[][] readRow;


//This is the brushSize variable it holds the size of the brush
int brushSize = 1;

//Declaring the serial communication class
Serial myPort;

//TODO RENAME CLASSES
Text text = new Text();
Grid gridClass = new Grid();
Mouse mouse = new Mouse();
Colour colour = new Colour();
Save save = new Save();
Read read = new Read();
Arduino arduino = new Arduino();

//This declares all of the tools as their own object
Tools bucket;
Tools eraser;
Tools loadPhoto;
Tools clear;
Tools grid;
Tools readFile;
Tools saveFile;

//These keep track of the time elapsed since the program started to know whether 500ms has passed to send new data
int prevMillis = 0;
int currMillis = 0;


void settings()
{

  //Calling the constructor method for all of the tool classes
  bucket = new Tools("bucketTrue.png", "bucketFalse.png", 796, 700, false, false);
  eraser = new Tools("eraserTrue.png", "eraserFalse.png", 756, 700, true, false);
  loadPhoto = new Tools("readPhotoTrue.png", "readPhotoFalse.png", 756, 60, true, false);
  clear = new Tools("clearTrue.png", "clearFalse.png", 836, 700, false, false);
  grid = new Tools("gridTrue.png", "gridFalse.png", 756, 20, true, true);
  readFile = new Tools("readTrue.png", "readFalse.png", 796, 60, false, false);
  saveFile = new Tools("saveTrue.png", "saveFalse.png", 836, 60, false, false);



  //Initializing the squares arrays as 32 by 32 arrays
  squaresR = new int[32][32];
  squaresG = new int[32][32];
  squaresB = new int[32][32];
  squares = new boolean[32][32];

  //Declaring the colours array
  colours = new int[3];

  //Declaring the tableRow's
  readRow = new TableRow[32][32];
  saveRow = new TableRow[32][32];

  //Declaring the save2Table object
  save2Table = new Table();





  //Adding the colums to store each value required in the table
  save2Table.addColumn("x");
  save2Table.addColumn("y");
  save2Table.addColumn("r");
  save2Table.addColumn("g");
  save2Table.addColumn("b");


  //Setting the size of the application window
  size(876, 736);








  //This connects to the serial port defined in Serial.list()[]
  myPort = new Serial(this, Serial.list()[2], 9600);

  //Buffer the port until it recieved the character \n (which is new line) then print the serial port it connected to
  myPort.bufferUntil('\n');
  println(Serial.list()[1]);
}




void draw()
{
  //Updating the grid class
  gridClass.update();
  //Updating the colour class
  colour.update();

  //Updating all of the tools
  bucket.update();
  eraser.update();
  loadPhoto.update();
  readFile.update();
  saveFile.update();
  clear.update();
  grid.update();

  //Sets the currMillis to the time passed (in milliseconds), since the start of the program
  currMillis = millis();
  //This checks if half a second has elapsed since the last transfer AND if there is new data available
  if (sendNew == true && currMillis - prevMillis > 500)
  {

    //Sends the new data if the conditions in the if statment are met
    arduino.update();
    sendNew = false;
    prevMillis = millis();
  }
}

void keyPressed()
{
  //This checks if the key that was pressed is a "CODED" key meaning it is not defined by standard ASCII values ie: TAB, SHIFT, COMMAND, etc, this is because it will cause an error in my code if it tries to display one of those characters
  if (key == CODED);
  else text.type(key);
}



void mouseDragged()
{
  //This updates the mouse class when the mouse is dragged
  mouse.update();
}

void mousePressed()
{
  //This updates the mouse class when the mouse is clicked
  mouse.update();
}

//This is the fileSelect function for selecting a .csv file to read into the program
void fileSelect(File selection) 
{
  //Sets the readValue in the read class as the filePath of the table and then calls the reading function
  read.readVal  = loadTable(selection.getAbsolutePath(), "header"); 
  read.read();
}

//This is the outSelect function for selecting a .csv file to save to
void outSelect(File selection)
{
  //This calls the saveToTable function with the parameter of the filePath
  save.saveToTable(selection.getAbsolutePath());
}

//This is the photoSelect function which initializes a new window with the image loaded
void photoSelect(File selection)
{
  //Initializing the new SecondWindow class in which the image selection will run and then running it
  image = new SecondWindow(selection.getAbsolutePath());
  String[] args = {"Photo Viewer"};
  PApplet.runSketch(args, image);
}