class Arduino
{
  
 void update()
 {
   
   

   //if(currMillis - prevMillis > 34)
   
     myPort.clear();
     myPort.write('S');
     while(myPort.read() != '\n')println(4);
     
      for(int i = 0; i < 32; i++)
      {
       for(int j = 0; j < 32; j++)
       {
        myPort.clear();
        myPort.write('R');
        
        while(myPort.read() != '\n')println(5);
        myPort.clear();
        myPort.write(squaresR[i][j]);
       
        while(myPort.read() != '\n')println(6) ;
         myPort.clear();
        myPort.write('G');
        
        while(myPort.read() != '\n')println(7);
        myPort.clear();
        myPort.write(squaresG[i][j]);
        
        while(myPort.read() != '\n')println(8);
        myPort.clear();
        myPort.write('B');
        
        while(myPort.read() != '\n')println(9);
        myPort.clear();
        myPort.write(squaresB[i][j]);
        while(myPort.read() != '\n')println(10);
        
       }    
      }



 }
}