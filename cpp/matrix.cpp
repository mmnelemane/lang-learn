#include <stdio.h>   // standard library [std = standard io =
                           // input / output ]
#include <iostream>  // standard io stream [input output stream]
// #include <conio.h>   // console input / output  con io
#include <windows.h> // windows [operating system] functions for
                           // drawing text
#include <math.h>    // used for math support.
using namespace std;

int main(int argc, char *argv[])
{
  HANDLE OutputH;          // Used by the operating system to access
                           // the console window 
                           // [like a handle to hold
                           // onto something]
  COORD position;          // This is to hold the X position, 
                           // and Y position 
                           // (column and row) of the
                           // text on the screen.

// setup - here we get a handle to the screen for output.
OutputH = GetStdHandle(STD_OUTPUT_HANDLE);

while (!kbhit())           // this loops until a key is pressed
{
  // calculate a random position to draw our text.
  position.X=(int)rand()%79+1;
  // rand()%79 gives us a range 0-78.
  // We want 1-79; so we add one.
  // Similar for Y
  position.Y=(int)rand()%23+1;

  // %2 is a good test for even or odd.
  // So we do light green or dark green
  // depending if the random
  // number is even or odd [half the time]
  if (rand()%2==0)
    SetConsoleTextAttribute(OutputH, 2);  // Dark Green
  else
    SetConsoleTextAttribute(OutputH,10);  // Light Green

  // here we use our handle to
  // the screen as our "all access pass" to tell
  // the OS where we want our text to show up.
  SetConsoleCursorPosition(OutputH,position);


  // again - testing for even or odd.
  if (rand()%2==0)
    cout << "0"; //even 
  else
    cout << "1"; // odd
  }

  // here we would place any tear down code or ending credits.
  // For now, well... we don't have any =:-)

  return 0;
}
