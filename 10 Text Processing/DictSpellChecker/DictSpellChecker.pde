// Craig S. Kaplan
//
// A simple spell checker that reads a word list, puts all
// the words into a dictionary (using IntDict), loads in a 
// text to check, and asks whether each word is in the dictionary.
// If not, print it out.

IntDict dictionary;

boolean isWord( String wd )
{
  return dictionary.hasKey( wd );
}

void setup()
{
  dictionary = new IntDict();
  
  // Instead of storing the words from the dictionary straight
  // into an array, let's pack them into a dictionary instead.
  // That takes a bit more work at setup time, but allows us to
  // look up words later much more efficiently.
  String[] lines = loadStrings( "words.txt" );
  for( int idx = 0; idx < lines.length; ++idx ) {
    dictionary.set( lines[idx], 1 );
  }
  
  // Now get the text we want to spell-check.  I thought of a 
  // new way of decomposing a long text into punctuation-free
  // words, one that makes later code easier to write.  So I'll
  // demonstrate that here.
  
  // 1. Go ahead and get the lines of text we're interested
  // in.  May as well re-use the variable lines.
  lines = loadStrings( "carol.txt" );
  // 2. Join all the text into one long line.
  String text = join( lines, ' ' );
  // 3. Split things by spaces *and* punctuation.
  String[] words = splitTokens( text, " \n\t!?.,;:-\"_()/0123456789" );
  
  // Now we can easily iterate over each word in the text.
  for( int idx = 0; idx < words.length; ++idx ) {
    // Convert each word into lower case, so that words
    // at the starts of sentences can still be spell checked
    String word = words[idx].toLowerCase();
    
    if( !isWord( word ) ) {
      // Note that if we want to report the word, we report
      // the *original*, not the version converted to lower
      // case.
      println( words[idx] );
    }
  }
}