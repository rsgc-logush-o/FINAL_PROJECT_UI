class Text
{
  int cursorX = 0;
  int cursorY = 0;
  int charWidth[] =
{
  4,//SPACE
  1,//!
  2,//"
  5,//#
  5,//$
  5,//%
  5,//&
  1,//'
  2,//(
  2,//)
  4,//*
  5,//+
  2,//,
  5,//-
  1,//.
  5,///
  5,//0
  5,//1
  5,//2
  5,//3
  5,//4
  5,//5
  5,//6
  5,//7
  5,//8
  5,//9
  1,//:
  2,//;
  3,//<
  5,//=
  3,//>
  5,//?
  5,//@
  5,//A
  5,//B
  5,//C
  5,//D
  5,//E
  5,//F
  5,//G
  5,//H
  5,//I
  5,//J
  5,//K
  5,//L
  5,//M
  5,//N
  5,//O
  5,//P
  5,//Q
  5,//R
  5,//S
  5,//T
  5,//U
  5,//V
  5,//W
  5,//X
  5,//Y
  5,//Z
  2,//[
  5,//\
  2,//]
  3,//^
  5,//_
  2,//`
  5,//a
  5,//b
  5,//c
  5,//d
  5,//e
  5,//f
  5,//g
  5,//h
  5,//i
  5,//j
  5,//k
  5,//l
  5,//m
  5,//n
  5,//o
  5,//p
  5,//q
  5,//r
  5,//s
  5,//t
  5,//u
  5,//v
  5,//w
  5,//x
  5,//y
  5,//z
  3,//{
  1,//|
  3,//}
  4//~
  
  
};
  boolean[][][] characters =
  {
    {//SPACE
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//!
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//"
      {true, true, false, false, false}, 
      {true, true, false, false, false}, 
      {true, true, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//#
      {false, false, false, false, false}, 
      {false, true, false, true, false}, 
      {true, true, true, true, true}, 
      {false, true, false, true, false}, 
      {true, true, true, true, true}, 
      {false, true, false, true, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//$
      {false, false, true, false, false}, 
      {false, true, true, true, true}, 
      {true, false, true, false, false}, 
      {false, true, true, true, false}, 
      {false, false, true, false, true}, 
      {true, true, true, true, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//%
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, false, false, true}, 
      {true, true, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, true, true}, 
      {true, false, false, true, true}, 
      {false, false, false, false, false}
    }, 
    {//&
      {false, false, false, false, false}, 
      {false, true, true, false, false}, 
      {true, false, false, true, false}, 
      {false, true, true, false, false}, 
      {true, false, true, false, true}, 
      {true, false, false, true, false}, 
      {false, true, true, false, true}, 
      {false, false, false, false, false}
    }, 
    {//'
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//(
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//)
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//*
      {true, false, true, false, true}, 
      {false, true, true, true, false}, 
      {true, true, true, true, true}, 
      {false, true, true, true, false}, 
      {true, false, true, false, true}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//+
      {false, false, false, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {true, true, true, true, true}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//,
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}
    }, 
    {//-
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//.
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {///
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//0
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, true, true}, 
      {true, false, true, false, true}, 
      {true, true, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//1
      {false, false, true, false, false}, 
      {false, true, true, false, false}, 
      {true, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//2
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//3
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, true, true, false}, 
      {false, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//4
      {false, false, false, true, false}, 
      {false, false, true, true, false}, 
      {false, true, false, true, false}, 
      {true, true, true, true, true}, 
      {false, false, false, true, false}, 
      {false, false, false, true, false}, 
      {false, false, false, true, false}, 
      {false, false, false, false, false}
    }, 
    {//5
      {true, true, true, true, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, false}, 
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {true, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//6
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, false}, 
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//7
      {true, true, true, true, true}, 
      {false, false, false, false, true}, 
      {false, false, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//8
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//9
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, true}, 
      {false, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//:
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//;
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//<
      {false, false, false, false, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//=
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//>
      {false, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//?
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, false, true, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//@
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, true, true, true}, 
      {true, false, true, true, true}, 
      {true, false, false, false, false}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 

    {//A
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//B
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//C
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//D
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//E
      {true, true, true, true, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//F
      {true, true, true, true, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//G
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, true, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//H
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//I
      {true, true, true, true, true}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//J
      {true, true, true, true, true}, 
      {false, false, false, true, false}, 
      {false, false, false, true, false}, 
      {false, false, false, true, false}, 
      {false, false, false, true, false}, 
      {true, false, false, true, false}, 
      {false, true, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//K
      {true, false, false, false, true}, 
      {true, false, false, true, false}, 
      {true, false, true, false, false}, 
      {true, true, false, false, false}, 
      {true, false, true, false, false}, 
      {true, false, false, true, false}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//L
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//M
      {true, false, false, false, true}, 
      {true, true, false, true, true}, 
      {true, false, true, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//N
      {true, false, false, false, true}, 
      {true, true, false, false, true}, 
      {true, false, true, false, true}, 
      {true, false, false, true, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//O
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//P
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//Q
      {false, true, true, false, false}, 
      {true, false, false, true, false}, 
      {true, false, false, true, false}, 
      {true, false, false, true, false}, 
      {true, false, true, true, false}, 
      {true, false, false, true, false}, 
      {false, true, true, false, true}, 
      {false, false, false, false, false}
    }, 
    {//R
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//S
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, false}, 
      {false, true, true, true, false}, 
      {false, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//T
      {true, true, true, true, true}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//U
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//V
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, false, true, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//W
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, true, false, true}, 
      {true, true, false, true, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//X
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//Y
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, false, true, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//Z
      {true, true, true, true, true}, 
      {false, false, false, false, true}, 
      {false, false, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//[
      {true, true, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//\
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, true, false}, 
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//]
      {true, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {true, true, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//^
      {false, true, false, false, false}, 
      {true, false, true, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//_
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//`
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//a
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, false}, 
      {false, false, false, false, true}, 
      {false, true, true, true, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//b
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//c
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//d
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, true, true, true, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//e
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, true, true, true, true}, 
      {true, false, false, false, false}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//f
      {false, false, true, true, false}, 
      {false, true, false, false, true}, 
      {false, true, false, false, false}, 
      {true, true, true, true, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//g
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, true}, 
      {false, false, false, false, true}, 
      {false, true, true, true, false}
    }, 
    {//h
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, true, true, false}, 
      {true, true, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//i
      {false, false, true, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//j
      {false, false, false, false, true}, 
      {false, false, false, false, false}, 
      {false, false, false, true, true}, 
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}
    }, 
    {//k
      {true, false, false, false, false}, 
      {true, false, true, false, false}, 
      {true, true, false, false, false}, 
      {true, true, false, false, false}, 
      {true, false, true, false, false}, 
      {true, false, false, true, false}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//l
      {false, true, false, false, false}, 
      {true, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {true, true, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//m
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, false, true, false}, 
      {true, false, true, false, true}, 
      {true, false, true, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//n
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, true, true, false}, 
      {true, true, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//o
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//p
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, true, false, false}, 
      {true, false, false, true, false}, 
      {true, false, false, true, false}, 
      {true, true, true, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}
    }, 
    {//q
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, false}, 
      {true, false, false, true, false}, 
      {true, false, false, true, false}, 
      {false, true, true, true, false}, 
      {false, false, false, true, false}, 
      {false, false, false, true, true}
    }, 
    {//r
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, true, true, false}, 
      {true, true, false, false, true}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//s
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, true, true, true, true}, 
      {true, false, false, false, false}, 
      {false, true, true, true, false}, 
      {false, false, false, false, true}, 
      {true, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//t
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, true, false, false}, 
      {true, true, true, true, true}, 
      {false, false, true, false, false}, 
      {false, false, true, false, false}, 
      {false, false, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//u
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, false}, 
      {false, false, false, false, false}
    }, 
    {//v
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, false, true, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//w
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {true, false, true, false, true}, 
      {true, true, false, true, true}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//x
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, true}, 
      {false, true, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, true, false}, 
      {true, false, false, false, true}, 
      {false, false, false, false, false}
    }, 
    {//y
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, false, false, false, true}, 
      {true, false, false, false, true}, 
      {false, true, true, true, true}, 
      {false, false, false, false, true}, 
      {false, false, false, false, true}, 
      {false, true, true, true, false}
    }, 
    {//z
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, true, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {true, true, true, true, true}, 
      {false, false, false, false, false}
    }, 
    {//{
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, true, false, false}, 
      {false, false, false, false, false}
    }, 
    {//|
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}, 
      {true, false, false, false, false}
    }, 
    {//}
      {true, false, false, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {false, false, true, false, false}, 
      {false, true, false, false, false}, 
      {false, true, false, false, false}, 
      {true, false, false, false, false}, 
      {false, false, false, false, false}
    }, 
    {//~
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {true, true, false, false, false}, 
      {false, false, true, true, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}, 
      {false, false, false, false, false}
    }

  };
  
  
  void type(char key)
  {
    
    sendNew = true;
    if(charWidth[key - 32] + cursorX > 31)
    {
     cursorX = 0;
     cursorY += 9;
    }
    for(int i = 0; i < 8; i++)
    {
     for(int j = 0; j < charWidth[key - 32]; j++)
     {
      squares[j + cursorX][i + cursorY] = characters[key - 32][i][j]; 
      if(characters[key - 32][i][j] == true)
      {
      squaresR[j + cursorX][i + cursorY] = colours[0]; 
      squaresG[j + cursorX][i + cursorY] = colours[1]; 
      squaresB[j + cursorX][i + cursorY] = colours[1]; 
      }
     }
    }
    
    cursorX += charWidth[key - 32] + 1;
  }
  
 
}