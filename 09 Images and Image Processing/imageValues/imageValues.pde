// print image values

void setup() {

  PImage img = loadImage("tucan_gray.png");

  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      int b = int(red(img.get(x, y)));
      print(b + ",");
    }
    println();
  }  



  //  PImage img = loadImage("tucan_bw.png");
  //
  //  for (int x = 0; x < img.width; x++) {
  //    for (int y = 0; y < img.height; y++) {
  //      int r = int(red(img.get(x, y)));
  //      if (r > 128) 
  //      print("true,");
  //      else
  //      print("false,");
  //      
  //    }
  //    println();
  //  }
}

