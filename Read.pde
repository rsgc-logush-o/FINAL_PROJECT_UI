//THIS CLASS IS FOR READING DATA FROM A .CSV FILE
//IT IS CALLED UPON WHEN THE R KEY IS PRESSED AND THEN A FILE IS SELECTED

class Read
{
  //THIS TABLE HOLDS THE VALUES THAT WERE READ FROM THE FILE
  Table readVal; 

  void read()//THIS IS THE READ FUNCTION IT HAS NO PARAMETERS
  {
    sendNew = true;


    //THIS LOOP GETS THE VALUE OF EACH NUMBER IN THE TABLE AND ASSIGNS IT TO IT'S PROPER VARIABLE IN THE PROGRAM
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++) 
      {

        int counter = i*32+j;//THIS IS TO GET THE PROPER ROW FROM THE .CSV FILE. 
        //THERE ARE 1024 ROWS IN EACH FILE EACH ONE PER PIXEL THEY ARE NOT HELD IN THE SAME TYPE OF ARRAY AS THE PIXELS IN THE PROGRAM IT IS ONLY A ONE DIMENSIONAL ARRAY

        readRow[i][j] = readVal.getRow(counter);//IT IS GETTING THE ROW FROM THE .CSV FILE

        squares[i][j] = true;

        //SETTING EACH OF THE PIXELS IN THE PROGRAM
        squaresR[i][j] = readRow[i][j].getInt("r");
        squaresG[i][j] = readRow[i][j].getInt("g");
        squaresB[i][j] = readRow[i][j].getInt("b");
      }
    }
  }
}