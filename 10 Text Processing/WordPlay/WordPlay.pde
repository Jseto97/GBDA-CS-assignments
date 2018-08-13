// Craig S. Kaplan
// 
// A demonstration of looking through a word list to find words with
// specific properties.

// A helper function to count the number of times a given
// character occurs in a string.
int countLetter( String str, char ch )
{
  int total = 0;

  for ( int idx = 0; idx < str.length(); ++idx ) {
    if ( str.charAt( idx ) == ch ) {
      ++total;
    }
  }

  return total;
}

// A helper function to determine if a given word is a
// palindrom.
boolean isPalindrome( String word )
{
  for ( int idx = 0; idx < word.length() / 2; ++idx ) {
    if ( word.charAt( idx ) !=
      word.charAt( word.length() - 1 - idx ) ) {
      return false;
    }
  }

  return true;
}

void setup()
{
  String[] words = loadStrings( "words.txt" );

  // First, find the longest word.
  String longest = "";
  for ( int idx = 0; idx < words.length; ++idx ) {
    if ( words[idx].length() > longest.length() ) {
      longest = words[idx];
    }
  }
  println( "Longest word:" );
  println( "  " + longest );
  println();

  // Second, find all words with three or more "y"s.
  println( "Three or more Ys:" );
  for ( int idx = 0; idx < words.length; ++idx ) {
    if ( countLetter( words[idx], 'y' ) >= 3 ) {
      println( "  " + words[idx] );
    }
  }
  println();

  // Third, find all palindromes with six or more
  // letters.
  println( "Long palindromes:" );
  for ( int idx = 0; idx < words.length; ++idx ) {
    if ( words[idx].length() >= 6 && isPalindrome( words[idx] ) ) {
      println( "  " + words[idx] );
    }
  }
  println();

  // Fourth, find all words ending in "gry".
  println( "Words ending in \"gry\":" );
  for ( int idx = 0; idx < words.length; ++idx ) {
    if ( words[idx].endsWith( "gry" ) ) {
      println( "  " + words[idx] );
    }
  }
  println();

  // Fifth, and finally, find all words of six or
  // more letters that have vowels only at the start
  // and end, and only consonants on the inside.  Use
  // a regular expression and the match() function to
  // find such words.  It would be a bit tedious to
  // write the necessary code without using regular expressions.
  
  String re = "^[aeiouy][^aeiouy]{4,}[aeiouy]$";

  println( "Consonant sandwich:" );
  for ( int idx = 0; idx < words.length; ++idx ) {
    if ( match( words[idx], re ) != null ) {
      println( "  " + words[idx] );
    }
  }
  println();
}