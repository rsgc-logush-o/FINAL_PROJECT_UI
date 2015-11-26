class Arduino
{
  int prevMillis;
  int currMillis;
 void update()
 {

   
     myPort.write('R');
     if(myPort.read() == 'R')
     {
      for(int i = 0; i < 32; i++)
      {
       for(int j = 0; j < 32; j++)
       {
         myPort.clear();
        myPort.write(squaresR[i][j]);
        myPort.bufferUntil('\n');
        myPort.clear();
        myPort.write(squaresG[i][j]);
        myPort.bufferUntil('\n');
         myPort.clear();
        myPort.write(squaresB[i][j]);
        myPort.bufferUntil('\n');
       }
     }
    }
    
   
 }
}