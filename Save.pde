//THIS IS THE SAVE CLASS
//IT HANDLES SAVING THE FILES
//IT LOADS ALL OF THE PIXEL VALUES TO A TABLE THEN SAVES IT TO A .CSV FILE

class Save
{
  void saveToTable(String saveLocation)//THIS FUNCTION HAS THE PARAMETER OF WHERE TO SAVE THE FILE TO WHICH IS SELECTED IN A POPUP WIDOW BY THE USER
  {   
    
    for(int i = 0; i < 32; i++)//THESE LOOPS ARE FOR GETTING THE DATA FROM EACH PIXEL AND LOADING IT TO THE TABLE
    {
     for(int j = 0; j < 32; j++) 
     {
       //THIS ADDS A ROW TO THE TABLE
       saveRow[i][j] = save2Table.addRow();
       
       //SETTING THE VALUES OF THE PIXEL
       saveRow[i][j].setInt("x", j);
       saveRow[i][j].setInt("y", i);
       saveRow[i][j].setInt("r", squaresR[i][j]);
       saveRow[i][j].setInt("g", squaresG[i][j]);
       saveRow[i][j].setInt("b", squaresB[i][j]);
       
       saveTable(save2Table, saveLocation);
       
    
     
     }
    }
   
  }

}