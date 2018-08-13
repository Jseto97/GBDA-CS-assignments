// Craig S. Kaplan
// Sample solution

// Store a mapping from punctuation marks to the
// number of times each one occurs in the text.
IntDict counts;

void setup()
{
  size( 500, 400 );

  counts = new IntDict();

  // Load the book into one giant string.
  String text = join( loadStrings( "carol.txt" ), "" );
  
  // Now walk over the text, storing every single character
  // in the dictionary.  Don't bother checking for punctuation
  // here -- that takes more code than we need.
  for ( int idx = 0; idx < text.length(); ++idx ) {
    String ch = str( text.charAt( idx ) );
    counts.set( ch, counts.get( ch, 0 ) + 1 );
  }

  background( 255 );
  // Now draw the bar chart specifically for these characters.
  drawGraph( ";:'\",!?." );
}

// Draw a graph for some arbitrary set of characters contained
// in the passed-in string.  A very convenient helper function.
void drawGraph( String things )
{
  noStroke();
  textSize( 32 );
  textAlign( CENTER );

  int max_count = 0;
  float th = float( height - 40 ) / float( things.length() );

  // Find the most-used of the characters in the string, to
  // be used to scale all the bars.
  for ( int idx = 0; idx < things.length(); ++idx ) {
    String s = str( things.charAt( idx ) );
    max_count = max( max_count, counts.get( s, 0 ) );
  }

  // Now draw the bars.
  for ( int idx = 0; idx < things.length(); ++idx ) {
    String s = str( things.charAt( idx ) );

    fill( 0 );
    text( s, 25, 25 + idx*th + 30 );
    
    fill( 255, 140, 0 );

    // Note the two-parameter version of counts.get().  The
    // second argument is returned as a "default" value if the
    // given key isn't found.  This saves us the trouble of
    // having to call counts.hasKey() first.
    int ct = counts.get( s, 0 );
    rect( 50, 20 + idx * th + 5, 
      map( ct, 0, max_count, 0, width - 60 ), th - 10 );
  }
}