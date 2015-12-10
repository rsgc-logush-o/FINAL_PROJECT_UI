//This is the read class
//It reads .csv files to load images into the program
class Read
{
  //This table is a temporary buffer that holds the values we read from the table before they are saved the the correct variables
  Table readVal; 

  //This function is called to read all of the values from the table
  void read()
  {
    //Tell the program there is new data available to send
    sendNew = true;


    //These loops handle reading the data from the table rows and loading them to the correct variables
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++) 
      {
        //This is for retrieveing data from the table because it's rows are a one dimensional array
        int counter = i*32+j;

        //Holding the data in a temporary row buffer
        readRow[i][j] = readVal.getRow(counter);


        //Setting the squares to the read values
        squares[i][j] = true;
        squaresR[i][j] = readRow[i][j].getInt("r");
        squaresG[i][j] = readRow[i][j].getInt("g");
        squaresB[i][j] = readRow[i][j].getInt("b");
      }
    }
  }
}