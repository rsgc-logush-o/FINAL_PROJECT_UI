class Colour
{



  void update()
  {  
    fill(255);
    rect(736, 0, 164, 736);
    for (int i = 0; i < 3; i++)
    {

      fill(255);
      rect((736+i*20+(i+1)*20)-8, 163, 35, 20);

      fill(0);
      textSize(16);
      text(colours[i], (736+i*20+(i+1)*20)-5, 180);

      if (i == 0) fill(colours[i], 0, 0);
      if (i == 1) fill(0, colours[i], 0);
      if (i == 2) fill(0, 0, colours[i]);



      rect(736+i*20+(i+1)*20, 200, 20, 255);
    }
    fill(colours[0], colours[1], colours[2]);

    rect(756, 475, 100, 20);
  }
}