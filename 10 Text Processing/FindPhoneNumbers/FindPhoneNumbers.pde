// Craig S. Kaplan

// Search a text document to find all the phone numbers
// matching a couple of popular patterns.  Just for fun, 
// use all the emails recovered from Drew Fossum's Enron
// email records, as published online after the company went
// belly-up.  There's a limitation here: the program as 
// written will only find the first phone number on every
// line of the input.

// A giant, complicated regular expression for matching
// phone numbers of the following forms:
// (nnn) nnn-nnnn
// nnn-nnn-nnnn
// nnn nnn-nnnn
String p = "(?:(?:\\((\\d\\d\\d)\\) )|(\\d\\d\\d)[ -])(\\d\\d\\d)-(\\d\\d\\d\\d)";

void setup()
{
  String[] lines = loadStrings( "input.txt" );
  for ( int idx = 0; idx < lines.length; ++idx ) {
    String[] m = match( lines[idx], p );
    if ( m != null ) {
      if( m[1] == null ) {
        println( "(" + m[2] + ") " + m[3] + "-" + m[4] );
      } else {
        println( "(" + m[1] + ") " + m[3] + "-" + m[4] );
      }
    }
  }
}