class Read
{
   Table readVal; 
  
 void read()
 {
  
 
   
   for(int i = 0; i < 32; i++)
   {
      for(int j = 0; j < 32; j++) 
      {
        
        int counter = i*32+j;
        
        readRow[i][j] = readVal.getRow(counter);
        
        squares[i][j] = true;
        
        squaresR[i][j] = readRow[i][j].getInt("r");
        squaresG[i][j] = readRow[i][j].getInt("g");
        squaresB[i][j] = readRow[i][j].getInt("b");
      }
   }
 }
 

 }