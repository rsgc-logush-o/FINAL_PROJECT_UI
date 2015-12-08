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
             
               myPort.write((byte)gamma[squaresR[i][j]]);
               
               break;
               
             case 1:
             
               myPort.write((byte)gamma[squaresG[i][j]]);
               
               break;
               
             case 2:
             
               myPort.write((byte)gamma[squaresB[i][j]]);
               
             break;
          }
        }
       }    
      }



 }
 
 int gamma[] = {
    0,  0,  0,  0,  0,  1,  1,  2,  3,  4,  5,  6,  8, 10, 12, 15 };

}