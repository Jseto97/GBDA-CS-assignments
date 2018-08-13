import controlP5.*;

ControlP5 ui;

String float_re = "([-+]?(?:[0-9]*\\.[0-9]+|[0-9]+))";
String int_re = "([-+]?[0-9]+)";

// Slider
String slider_re = 
  "^\\s*(float|int)\\s+(\\w+)\\s*;\\s*//C\\s+"
  + float_re + ":" + float_re + ":" + float_re;

// Add a callback to respond to a button press
String func_re =
  "^\\s*void\\s+(\\w+)\\s*\\(\\s*\\)\\s*//C";
  
// Add a switch that controls a boolean
String switch_re =
  "^\\s*boolean\\s+(\\w+)\\s*;\\s*//C";
  
// Add a radio button.
String radio_re =
  "^\\s*void\\s+(\\w+)\\s*\\(\\s*int\\s+(?:\\w+)\\s*\\)\\s*//C\\s*(\\*?\"\\w+\"(?:\\s*,\\s*\\*?\"\\w+\")*)\\s*$";
String string_re = 
  "\\s*\"(\\w+)\"";

void initUI( PApplet app )
{
  ui = new ControlP5( app );
  ui.setAutoAddDirection( ControlP5.VERTICAL );
  ui.setAutoSpacing( 10, 25 );
  String sname = app.getClass().getName();

  String[] lines = loadStrings( sname + ".pde" );

  for ( String l : lines ) {
    String[] grps = match( l, slider_re );
    if ( grps != null ) {
      String vname = grps[2];
      float lo = float( grps[3] );
      float st = float( grps[4] );
      float hi = float( grps[5] );

      Slider slider = ui.addSlider( vname )
        .setRange( lo, hi )
        .setValue( st )
        .setSize( 200, 25 );
      if ( grps[1].equals( "int" ) ) {
        slider.setDecimalPrecision( 1 );
      }
      continue;
    }
    grps = match( l, func_re );
    if ( grps != null ) {
      Button b = ui.addButton( grps[1] );
      continue;
    }
    grps = match( l, switch_re );
    if ( grps != null ) {
      Toggle b = ui.addToggle( grps[1] )
        .setMode( ControlP5.SWITCH );
      continue;
    }
    grps = match( l, radio_re );
    if ( grps != null ) {
      String[] wds = splitTokens( grps[2], "," );
      RadioButton rb = ui.addRadioButton( grps[1] )
        .setItemsPerRow( wds.length )
        .setSize( 25, 25 )
        .setSpacingColumn( 50 );
      int idx = 0;
      int act = 0;
      for ( String wd : wds ) {
        String[] blah = match( wd, string_re );
        rb.addItem( blah[1], idx );
        if( wd.contains( "*" ) ) {
          act = idx;
        }
        ++idx;
      }
      rb.activate( act );
      continue;
    }
  }
}