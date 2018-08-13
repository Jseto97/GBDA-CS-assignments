// Craig S. Kaplan
// A simple sketch that demonstrates drawing text to the
// sketch window.  Use two different fonts at two different
// sizes.

PFont fnt1;
PFont fnt2;

void setup()
{
  size( 800, 300 );
  
  // Load up the two fonts.  Definitely want to do this
  // once ahead of time.
  fnt1 = createFont( "Impact", 48 );
  fnt2 = createFont( "Papyrus", 36 );
}

void draw()
{
  background( 255 );
  fill( 0 );
  textAlign( CENTER );
  
  // Use font 1 and draw some meme-like text.
  textFont( fnt1 );
  text( "I don't always use Processing", 400, 60 );
  text( "But when I do, I don't", 400, 280 );
  
  // Use font 2 and draw an extra bit of text.
  textFont( fnt2 );
  fill( random( 255 ), random( 255 ), random( 255 ) );
  text( "lolwut", random( width ), random( height ) );
}