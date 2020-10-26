//----------CODE FOR DESIGNING THE BACKGROUND INSPIRED BY "THE SHINING"---//
  int a;
  //work on this
void hexgrid(){
pushMatrix();
    background(#c85502);
  fill(#800020);
    strokeWeight(30);
  //a= a+1;
for (int i= 0; i<width; i+=250) {
  beginShape();
vertex(i+100,100+a);
vertex(i+175,50+a);
vertex(i+250,100+a);
vertex(i+250,200+a);
vertex(i+175,250+a);
vertex(i+100,200+a);
vertex(i+100,100+a);
vertex(i+100,200+a);


endShape();
};

for (int i= 0; i<width; i+=250){
beginShape();

int x= -100; //moves the first hexagon. 
int y= 200+a;
vertex(i+x+100, y+100);
vertex(i+x+175, y+ 50);
vertex(i+x+250, y+100);
vertex(i+x+250, y+200);
vertex(i+x+175, y+250);
vertex(i+x+100, y+200);
vertex(i+x+100, y+100);
vertex(i+x+100, y+200);
endShape();
};


for (int i= 0; i<width; i+=250){
  beginShape();
int x= 10; //moves the first hexagon. 
int y= 400+a;
vertex(i+x+100, y+100);
vertex(i+x+175, y+ 50);
vertex(i+x+250, y+100);
vertex(i+x+250, y+200);
vertex(i+x+175, y+250);
vertex(i+x+100, y+200);
vertex(i+x+100, y+100);
vertex(i+x+100, y+200);
endShape();

};

for (int i= 0; i<width; i+=250){
beginShape();

int x= -100; //moves the first hexagon. 
int y= 600+a;
vertex(i+x+100, y+100);
vertex(i+x+175, y+ 50);
vertex(i+x+250, y+100);
vertex(i+x+250, y+200);
vertex(i+x+175, y+250);
vertex(i+x+100, y+200);
vertex(i+x+100, y+100);
vertex(i+x+100, y+200);
endShape();
};
for (int i= 0; i<width; i+=250){ //i changed the i, the spacing
beginShape();

int x= 10; //moves the first hexagon. 
int y= 800+a;
vertex(i+x+100, y+100);
vertex(i+x+175, y+ 50);
vertex(i+x+250, y+100);
vertex(i+x+250, y+200);
vertex(i+x+175, y+250);
vertex(i+x+100, y+200);
vertex(i+x+100, y+100);
vertex(i+x+100, y+200);
endShape();
};

popMatrix();
};
