class Save
{
  void saveToTable(String saveLocation)
  {   
   
   
    
    for(int i = 0; i < 32; i++)
    {
     for(int j = 0; j < 32; j++) 
     {
       saveRow[i][j] = save2Table.addRow();
       
      
       saveRow[i][j].setInt("x", j);
       saveRow[i][j].setInt("y", i);
       saveRow[i][j].setInt("r", squaresR[i][j]);
       saveRow[i][j].setInt("g", squaresG[i][j]);
       saveRow[i][j].setInt("b", squaresB[i][j]);
       
       saveTable(save2Table, saveLocation);
       
    
     
     }
    }
    //  setup();
  }

}