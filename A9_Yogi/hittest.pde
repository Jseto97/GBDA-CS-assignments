// userdefined hittest Advanced Concept

boolean hittest(float mouseX, float mouseY, float x, float y, float radius) {

  // calculate distance from pX, pY  to centre of circle
  float d = dist(mouseX, mouseY, x, y);

  // if it's less than radius, we have a hit
  if (d < radius) {
    return true;
  } else {
    return false;
  }
}