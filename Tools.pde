class Tools
{
  int eraserX;
  int eraserY;
  int gridX;
  int gridY;
  int bucketX;
  int bucketY;
  boolean eraser;
  boolean grid;
  boolean bucket;
  
 Tools(int gridX_, int gridY_, int bucketX_, int bucketY_, int eraserX_, int eraserY_)
 {
   eraserX = eraserX_;
   eraserY = eraserY_;
   gridX = gridX_;
   gridY = gridY_;
   bucketX = bucketX_;
   bucketY = bucketY_;
 }
 
   void update()
   {
     drawEraser();
     drawGrid();
     drawBucket();
   }
   
   private void drawEraser()
   {
     
   }
   
   private void drawGrid()
   {
     
   }
   
   private void drawBucket()
   {
     
   }
}