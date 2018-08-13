// Craig S. Kaplan
//
// A variation of the DictSpellChecker sketch that only
// reports non-words *once each*.  That is, a given word
// that the dictionary doesn't know about will only appear
// in the output once.  Do this by using a second dictionary
// (i.e., an IntDict) to hold the generated list of non-words.

// You'll see that there are still some problems with this 
// spell-checker that a real-world spellchecker would deal
// with.  The obvious ones are recognizing proper nouns like
// names, countries, months, etc., and dealing properly with
// contractions like "isn't", "other's", "o'clock", etc.

IntDict dictionary;
IntDict non_words;

boolean isWord( String wd )
{
  return dictionary.hasKey( wd );
}

void setup()
{
  dictionary = new IntDict();
  non_words = new IntDict();

  // Instead of storing the words from the dictionary straight
  // into an array, let's pack them into a dictionary instead.
  // That takes a bit more work at setup time, but allows us to
  // look up words later much more efficiently.
  String[] lines = loadStrings( "words.txt" );
  for ( int idx = 0; idx < lines.length; ++idx ) {
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
  for ( int idx = 0; idx < words.length; ++idx ) {
    // Convert each word into lower case, so that words
    // at the starts of sentences can still be spell checked
    String word = words[idx].toLowerCase();

    if ( !isWord( word ) ) {
      // Note that if we want to report the word, we report
      // the *original*, not the version converted to lower
      // case.
      non_words.set( words[idx], 1 );
    }
  }
  
  // Now we can simply print out every key in the non-word
  // dictionary.  May as well do so in alphabetical order.
  non_words.sortKeys();
  String[] report = non_words.keyArray();
  for( int idx = 0; idx < report.length; ++idx ) {
    println( report[idx] );
  }
}