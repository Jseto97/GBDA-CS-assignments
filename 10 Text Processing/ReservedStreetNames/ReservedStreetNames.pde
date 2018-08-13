// Craig S. Kaplan
// 
// I wanted to do some useful data processing on the
// Region of Waterloo's list of reserved street names
// (www.regionofwaterloo.ca/en/regionalgovernment/reservedstreetnamesdataset.asp)
// However, what they advertise as a CSV file on their
// web page turns out to be a cutesy ASCII art table, with
// lines drawn in using - and |.  This sketch demonstrates
// the use of text processing functions to convert the
// region's file into useful data.  In theory you could
// take this sketch's output and store it in a *real* CSV
// file.

void setup()
{
  String[] lines = loadStrings( "ReservedStreetnames.csv" );
  
  for( int idx = 0; idx < lines.length; ++idx ) {
    String line = lines[idx];
    if( line.charAt( 0 ) != '-' ) {
      String[] words = splitTokens( line, "|" );
      
      String street = trim( words[0] );
      String municipality = trim( words[1] );
      
      println( "\"" + street + "\",\t\"" + municipality + "\"" );
    }
  }
}