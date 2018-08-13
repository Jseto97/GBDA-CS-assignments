// image filtering
// press number keys for different filters

PImage img;

int effect = 0;

void setup()
{
  img = loadImage("bird.jpg");
  
  // set canvas size to image size
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
}

void draw()
{
  image(img, 0, 0);

  if (effect == 1) {
    filter(POSTERIZE, 3);
  } else if (effect == 2) { 
    filter(INVERT);
  } else if (effect == 3) { 
    filter(GRAY);
  } else if (effect == 4) { 
    filter(DILATE);
  } else if (effect == 5) { 
    filter(ERODE);
  } else if (effect == 6) { 
    filter(THRESHOLD);
  } else if (effect == 7) { 
    filter(BLUR, 3);
  }
}

// pick a new random effect with a key press
void keyPressed()
{
  // advanced technique to get number key input as int
  if (key >= '0' && key <= '9') {
    effect = int(key) - 48;
  }

  println(effect);
}