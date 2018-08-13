// A2 Starter Code

// setup
// don't change anything from HERE ...
size(160, 720);
int scale = 10;
PGraphics h = createGraphics(width * scale, height * scale, JAVA2D);
beginRecord(h);
h.scale(scale); 
background(0);
// ... to HERE

// VERY IMPORTANT: put *your* uwaterloo username inside the quotes
String uwid = "J4Seto";

// now write code to draw your body ...

//Cape
fill(255, 240, 240, 255);
quad(10, 10, 150, 10, 105, 230, 55, 230);

//Cape Opacity
fill(235, 240, 245, 100);
quad(10, 10, 160, 30, 105, 230, 55, 230);

//Japanese Characters reading the word "Saitama"
strokeWeight(2);
strokeCap(PROJECT);
line(35, 25, 35, 35);
line(30, 30, 45, 30);
line(42, 25, 42, 35);
line(42, 35, 38, 40);

line(62, 25, 55, 35);
line(60, 30, 60, 40);

line(78, 25, 71, 35);
line(76, 28, 85, 28);
line(85, 28, 74, 40);
line(77, 31, 83, 35);

line(96, 28, 108, 28);
line(108, 28, 102, 34);
line(98, 32, 106, 36);

//Neck
fill(255, 218, 185, 255);
quad(65, 220, 95, 220, 100, 235, 55, 235);   

//Shoulder Pauldrens
fill(211, 215, 215, 255);
ellipse(55, 230, 25, 20);
ellipse(105, 230, 25, 20);

//Head
fill(255, 218, 185, 255);
ellipse(80, 160, 100, 125);

//Eyebrows
strokeWeight(3);
strokeCap(ROUND);
line(40, 140, 60, 140);
line(80, 140, 100, 140);

//Eyes (top)
strokeWeight(1);
strokeCap(ROUND);
line(35, 148, 55, 148);
line(75, 148, 95, 148);

//Eyes (bottom)
bezier(35, 150, 38, 160, 50, 160, 55, 150);
bezier(75, 150, 78, 160, 90, 160, 95, 150);
fill(255, 255, 255, 255);

//Eyes (pupil)
ellipse(45, 152, 1, 1);
ellipse(85, 152, 1, 1);
bezier(60, 160, 60, 170, 50, 180, 60, 180); 

//Mouth
line(60, 193, 70, 193);

//Nose
bezier(130, 150, 140, 147, 140, 165, 127, 180); 


//Body
fill(255, 255, 0, 255);
quad(40, 240, 120, 240, 120, 480, 40, 480);

//Top Suit
fill(255, 255, 255, 255);
triangle(40, 240, 120, 240, 80, 280);
fill(255, 218, 185, 255);
triangle(60, 240, 100, 240, 80, 260);
fill(211, 215, 215, 255);
ellipse(80, 280, 25, 20);

//Arms
fill(255, 255, 0, 225);
quad(10, 240, 40, 240, 40, 360, 10, 360);
quad(120, 240, 150, 240, 150, 360, 120, 360);


// Right Hand
fill(255, 0, 0, 255);
quad(10, 360, 40, 360, 40, 420, 10, 420); 
//glow
fill(235, 240, 245, 80); 
ellipse(25, 420, 60, 60);
fill(255, 0, 0, 255);
ellipse(25, 420, 40, 40);


// Left Hand
fill(255, 0, 0, 80);
quad(120, 360, 150, 360, 150, 380, 120, 380); //Motion blur
fill(255, 0, 0, 100);
quad(120, 360, 150, 360, 140, 400, 120, 400); //Motion blur
fill(255, 0, 0, 255);
quad(120, 340, 150, 360, 130, 400, 100, 400); //Motion blur
fill(255, 0, 0, 255);
quad(120, 340, 140, 360, 100, 400, 80, 380); 
//fingers
strokeWeight(2);
strokeCap(ROUND);
line(85, 375, 95, 383);
line(95, 365, 105, 373);
line(107, 355, 115, 363);
line(117, 345, 125, 353);

//belt
fill(50, 50, 50, 255);
quad(40, 450, 120, 450, 120, 480, 40, 480);


//belt part two
fill(50, 50, 50, 255);
quad(40, 480, 120, 480, 120, 500, 40, 500);
fill(240, 230, 150, 255);
ellipse(80, 480, 30, 30);

//legs
fill(255, 255, 0, 255);
quad(40, 500, 120, 500, 140, 720, 20, 720);
fill(0, 0, 0, 255);
triangle(80, 520, 100, 720, 60, 720);














// draw these mandatory joining sections LAST:
// You can change the colour for these sections,
fill(#FFFFFF);
// but don't change their width or position!
noStroke();
rectMode(CORNER);
//   neck section
fill(255, 218, 185, 255);
rect(50, 235, 60, 10);
//   waist section
fill(50, 50, 50, 255);
rect(20, 475, 120, 10);

// code to save sections
// (make sure this is the very last code in your sketch)
// don't change anything from HERE ...
h.get(0, 0, 160 * scale, 240 * scale).save("top_" + uwid + ".png");
h.get(0, 240 * scale, 160 * scale, 240 * scale).save("middle_" + uwid + ".png");
h.get(0, 480 * scale, 160 * scale, 240 * scale).save("bottom_" + uwid + ".png");
// ... to HERE