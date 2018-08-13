// An alternate version of the Spirograph question from 
// Lab 04, based on a fun experiment of mine.  Instead of
// being forced to manually build up all the user interface
// widgets by writing explicit ControlP5 code, I provide
// a helper library (in the "Deco" tab) that uses regular
// expressions to discover special comments in the main 
// program.  The comments describe what widgets to associate
// with each global variable, and the library creates them 
// automatically.  Slick!

// To be clear, this is beyond what I'd expect students in 
// CS 106 to be able to produce on their own, but I wanted
// to offer a demonstration of the power of regular expressions
// and their ability to help us, even in the context of this
// course.

// Name
// Student ID Number

// A Spirograph (https://en.wikipedia.org/wiki/Spirograph) is a
// plastic toy that lets you draw fancy curves by moving a gear
// inside or around another gear.

// Global variables that control the Spirograph
// Number of teeth in the big gear
int big_teeth; //C 8:50:150
// Number of teeth in the little gear
int little_teeth; //C 4:27:75
// Whether the little gear moves around the inside or
// outside of the big gear
boolean inside; //C
// The radius of the big gear
float radius; //C 100:200:400
// How far the drawing pen is from the centre of the little
// gear; a number between 0 and 1, where 0 means "right at 
// the centre" and 1 means "right on the edge".
float l; //C 0.0:0.75:1.5

// How many points to use when drawing the spirograph
// curve.  More points gives a more accurate drawing,
// but takes longer to draw.
int num_points = 10000;

// A small mathematical utility function -- compute the
// Greatest Common Divisor between two numbers.  You
// don't need to understand this function.
int gcd( int a, int b )
{
  while ( b != 0 ) {
    int tmp = a % b;
    a = b;
    b = tmp;
  }
  return a;
}

// Draw the spirograph curve, based on the values of the
// global variables defined above.
void drawSpirograph()
{
  // This is a big pile of math adapted from the Wikipedia
  // entry for Spirographs.  It uses a lot of trigonometry.
  // You don't have to understand it -- you only need to
  // be able to call this function to get your spirograph
  // drawing.
  
  float R = radius;
  float k = float(little_teeth)/float(big_teeth);

  float max_t =
    TWO_PI * little_teeth / gcd( big_teeth, little_teeth );
  float inc = max_t / num_points;

  float k1 = (1.0-k);
  float s = 1.0;
  if ( !inside ) {
    k1 = 1.0 + k;
    s = -1.0;
  }

  beginShape();
  float t = 0.0;
  for ( int idx = 0; idx < num_points; ++idx ) {
    float xt = R * (k1*cos(t)+s*l*k*cos(k1/k*t));
    float yt = R * (k1*sin(t)-s*l*k*sin(k1/k*t));

    vertex( width/2 + xt, height/2 + yt );
    t = t + inc;
  }
  endShape();
}

void setup()
{
  size( 600, 600 );
  initUI( this );
}

void draw()
{
  background( 30 );
  stroke( 100, 100, 200 );
  noFill();
  drawSpirograph();
}