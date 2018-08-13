// Craig S. Kaplan
// A slightly crazier demonstration of drawing text to the
// sketch window.  Use a built-in Processing function to
// get a list of all fonts, and choose a new one at random
// every frame.  Not really a recommended technique, but fun 
// to play with.

String[] all_fonts;
PFont main_font;

void setup()
{
  size( 800, 300 );
  main_font = createFont( "Impact", 48 );
  
  // Retrieve an array of the names of all fonts installed
  // on this computer.  See the online Processing reference
  // for PFont to learn more.
  all_fonts = PFont.list();
  
  // Slow down the sketch.
  frameRate( 2 );
}

void draw()
{
  background( 255 );
  fill( 0 );
  textAlign( CENTER );
  
  // Draw the meme-like text.
  textFont( main_font );
  text( "I don't always use Processing", 400, 60 );
  text( "But when I do, I don't", 400, 280 );

  // Set the text to be a random font at a random size.
  int random_index = int( random( all_fonts.length ) );
  textFont( createFont( all_fonts[ random_index ], 
    random( 30, 72 ) ) );
  
  // Now draw a string in a random colour.
  fill( random( 255 ), random( 255 ), random( 255 ) );
  text( "same", random( width ), random( height ) );
}