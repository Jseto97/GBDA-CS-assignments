// Justin Seto
// 20603004

import controlP5.*;

ControlP5 ui;
Textfield field;
Textarea area;

Table movies; //variable for csv movies
Table ratings; //variable for csv ratings  

void setup()
{
 movies = loadTable( "movies.csv", "header"  ); // load tables

 ratings = loadTable( "ratings.csv", "header" ); 

  size( 400, 400 );
  
  ui = new ControlP5( this );
  field = ui.addTextfield( "Title" )
    .setFont( createFont( "Arial", 24 ) )
    .setSize( 360, 30 )
    .setPosition( 20, 10 )
    .setAutoClear( false );
  
  area = ui.addTextarea( "Ratings" )
    .setFont( createFont( "Arial", 16 ) )
    .setColor( color( 255 ) )
    .setSize( 360, 300 )
    .setPosition( 20, 80 );
    
  // TODO -- read the two CSV files into global Table
  // variables.  Make sure to read the header rows correctly.
}

void draw()
{
  background( 50 );
  textSize( 24 );
}

void controlEvent( ControlEvent ce )
{
  if ( ce.isFrom( field ) ) {
    String txt = field.getText();
  
  String[] match = {};
  
  String movie_id = null;
    // looping over Movies csv
    for ( int idx = 0; idx < movies.getRowCount(); ++idx ) {
      String movietitle = movies.getString( idx, "title" );
      // retrieving movie id
      if( movietitle.contains( txt ) ){
       int movie = movies.getInt( idx, "movieId" );
        movie_id = str(movie);
      // looping over Ratings csv
     for ( int ix = 0; ix < ratings.getRowCount(); ++ix ) {
       int id = ratings.getInt( ix, "movieId" );
       if(id == movie){
           int rating = ratings.getInt( idx, "rating");
            match = append( match, movie_id );
         }
       }
     }
    }
    
    // TODO -- 
    // 1. Find all movies movies.csv whose titles contain txt.
    // 2. For each of those movies, iterate over the ratings
    //    in ratings.csv, calculating the average rating for 
    //    that movie.
    // 3. Include a line of text in the Textarea defined above
    //    of the form "Some Random Movie (1993) -- 3.1415 stars".
    area.setText( join( match, "\n" ) );
  
    }
}