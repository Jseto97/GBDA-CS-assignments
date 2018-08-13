// Craig S. Kaplan
// Sample Solution

import controlP5.*;

// The ControlP5 factory and two UI elements: a text label to tell
// you what mode you're in, and a scrollable text area to show all
// the words found in that mode.
ControlP5 ui;
Textfield field;
Textarea area;

// Store an array of all English words.
String[] words;

// A helper function that turns a word into its
// "signature" -- a version in which the letters are
// sorted.  For example, "process" would become "ceoprss".
String getSig( String wd )
{
  // A cute one-liner that does the trick.
  return new String( sort( wd.toCharArray() ) );
  
  // If the one-liner makes you uncomfortable, here's
  // a version that's easier to read.
  /*
  // Create a char array to hold the letters of the word
  char[] arr = new char[ wd.length() ];
  // Pack the letters into the array.
  for( int idx = 0; idx < arr.length; ++idx ) {
    arr[idx] = wd.charAt( idx );
  }
  // Sort the array.
  arr = sort( arr );
  // Now create an empty string and push the letters
  // onto it one-by-one, now in sorted order.
  String ret = "";
  for( int idx = 0; idx < arr.length; ++idx ) {
    ret = ret + arr[idx];
  }
  return ret;
  */
}

void setup()
{
  size( 400, 400 );

  // Get the dictionary
  words = loadStrings( "words.txt" );
  
  // BONUS BONUS BONUS BONUS BONUS
  // Ignore this if you don't want to read about the bonus.
  
  // Find the word with the most anagrams by creating a 
  // dictionary mapping signatures to the number of times
  // each one is used by a word.
  IntDict d = new IntDict();
  for ( int idx = 0; idx < words.length; ++idx ) {
    String sig = getSig( words[idx] );
    d.set( sig, d.get( sig, 0 ) + 1 );
  }
  // Sort to put the most-used signatures at the top of
  // the dictionary.
  d.sortValuesReverse();
  
  // Now in a second pass, re-find all the words that have
  // this signature.
  String bsig = d.keyArray()[0];
  String[] most_anagrams = {};
  for ( int idx = 0; idx < words.length; ++idx ) {
    String sig = getSig( words[idx] );
    if( bsig.equals( sig ) ) {
      most_anagrams = append( most_anagrams, words[idx] );
    }
  }
  // END OF BONUS

  // Set up the user interface
  ui = new ControlP5( this );

  field = ui.addTextfield( "" )
    .setPosition( 5, 5 )
    .setSize( 390, 40 )
    .setFont( createFont( "arial", 24 ) )
    .setColor( color( 255, 255, 255 ) )
    .setAutoClear( false )
    .setText( most_anagrams[0] );

  area = ui.addTextarea( "Words" )
    .setPosition( 5, 50 )
    .setSize( 390, 345 )
    .setFont( createFont( "arial", 24 ) )
    .setColor( color( 255, 255, 255 ) )
    .setText( join( most_anagrams, "\n" ) );
}

void draw()
{
  background( 50 );
}

void controlEvent( ControlEvent ce )
{
  if( ce.isFrom( field ) ) {
    String txt = field.getText();
    String sig = getSig( txt );
    String[] results = {};
    for( int idx = 0; idx < words.length; ++idx ) {
      if( sig.equals( getSig( words[idx] ) ) ) {
        results = append( results, words[idx] );
      }
    }
    
    area.setText( join( results, "\n" ) );
  }
}