//This is the save class
//It saves the square data to a .csv file that the program can read using the read class

class Save
{
  void saveToTable(String saveLocation)//This function handles saving the table, the saveLocation parameter is where the program will save the file to
  {   
    //These loops get all of the square data and load them into the table, row by row.
    for (int i = 0; i < 32; i++)
    {
      for (int j = 0; j < 32; j++) 
      {
        //This adds a row to the table that the information is stored in
        saveRow[i][j] = save2Table.addRow();

        //These set the appropriate columns in the new row to the values they need to be
        saveRow[i][j].setInt("x", j);
        saveRow[i][j].setInt("y", i);
        saveRow[i][j].setInt("r", squaresR[i][j]);
        saveRow[i][j].setInt("g", squaresG[i][j]);
        saveRow[i][j].setInt("b", squaresB[i][j]);

        //This saves those rows to the table
        saveTable(save2Table, saveLocation);
      }
    }
  }
}