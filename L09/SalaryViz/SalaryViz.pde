void setup() {
  background(0); // black
  Table salaries = loadTable( "Salaries.csv", "header" ); // load salaries
  size(500, 500);

  //Iterate over Rows
  for ( int idx = 0; idx < salaries.getRowCount(); ++idx ) {
    fill(255, 120);
    int xpos = salaries.getInt( idx, "yearID" ); // year ID
    int ypos = salaries.getInt( idx, "salary" ); // Salary
    
    float x = map(xpos, 1985, 2016, 25, 475); //mapping vales to fit size
    float y = map(ypos, 0, 33000000, 475, 25);
    noStroke();
    ellipse(x, y, 5, 5); // draw visualization
  
  //Title Basball Salaries
  fill(218,165,50, 30); // gold  
  textSize(30);
  text("Baseball Salaries", 30, 35);
  text("1956 - 2016", 30, 65);
  
  }
}