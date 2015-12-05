class Arduino
{
  
 void update()
 {
   
   

   //if(currMillis - prevMillis > 34)
   
     
     
      for(int i = 0; i < 32; i++)
      {
       for(int j = 0; j < 32; j++)
       {
        for(int k = 0; k < 3; k++)
        {
          switch(k)
          {
             case 0:
             
               myPort.write((byte)squaresR[i][j]);
               
               break;
               
             case 1:
             
               myPort.write((byte)squaresG[i][j]);
               
               break;
               
             case 2:
             
               myPort.write((byte)squaresB[i][j]);
               
             break;
          }
        }
       }    
      }



 }
}