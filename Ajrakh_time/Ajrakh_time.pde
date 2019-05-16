import processing.sound.*;
AudioIn in;
Amplitude amp;
PShape motif;
PShape motif1;
PShape motif2;
PShape motif3;
PShape motif4;
float vo;
color c1;

void setup(){
fullScreen();
//size(600,600);
motif1 = loadShape("ajrakh01.svg");
motif2 = loadShape("ajrakh02.svg");
motif3 = loadShape("ajrakh03.svg");
motif4 = loadShape("ajrakh04.svg");
frameRate(10);
in = new AudioIn(this, 0);
amp = new Amplitude(this);
in.start();
amp.input(in);
}

void draw(){
background (#ffffff);
float S = 10000*amp.analyze();//variable for sound amplitude levels
//float So = map(S,0,1000,0,100);
float Si = map(S,0,4000,0.5,8);
println(S);
println(frameCount);
noFill();
motif1.disableStyle();
motif2.disableStyle();
motif3.disableStyle();
motif4.disableStyle();

// Changing color and rotation as per voice input 
if (S > 400){
  vo = Si;
  c1 = #3d62ad;
} else{
  vo = frameCount;
  c1 = #000000;
}


// Switching Patterns - moves between four ajrakh patterns
/*if (S < 400){
  motif = motif1;
} else if (S < 1000 && S > 400){
  motif = motif2;
} else if (S < 3000 && S > 1000){
  motif = motif3;
} else{
  motif = motif4;
}*/

// Time-switching Patterns - moves between four ajrakh patterns
if (frameCount < 40){
  motif = motif3;
} else if (frameCount < 100 && frameCount > 40){
  motif = motif2;
} else if (frameCount < 300 && frameCount > 100){
  motif = motif1;
} else{
  motif = motif4;
}


// Pattern grid
//Block 1
pushMatrix();
translate(width*0.5, height*0.5);
stroke(c1);
strokeWeight(Si);
rotate(radians(vo*10));
shapeMode(CENTER);
shape(motif, 0, 0, 600,600);
popMatrix();

//Block 2
pushMatrix();
translate(width*0.20, height*0.20);
stroke(c1);
strokeWeight(Si);
rotate(radians(vo*10));
shapeMode(CENTER);
shape(motif, 0, 0, 200,200);
popMatrix();

//Block 3
pushMatrix();
translate(width*0.80, height*0.20);
stroke(c1);
strokeWeight(Si);
rotate(radians(vo*10));
shapeMode(CENTER);
shape(motif, 0, 0, 200,200);
popMatrix();

//Block 4
pushMatrix();
translate(width*0.20, height*0.80);
stroke(c1);
strokeWeight(Si);
rotate(radians(vo*10));
shapeMode(CENTER);
shape(motif, 0, 0, 200,200);
popMatrix();

//Block 5
pushMatrix();
translate(width*0.80, height*0.80);
stroke(c1);
strokeWeight(Si);
rotate(radians(vo*10));
shapeMode(CENTER);
shape(motif, 0, 0, 200,200);
popMatrix();

}
