// hittest boolean 
boolean circleHitTest(float pX, float pY, float cX, float cY, float radius) {
  
  // calculate distance from pX, pY  to centre of circle
  float d = dist(pX, pY, cX, cY);

  // if it's less than radius, we have a hit
  if (d < radius) {
    return true;
  } else {
    return false;
  }
} 