
// the candies provide an added challenge
// make this into a class object 
float ex;
float why=80;
float why2=50;
float why3=50;
void candy() {
  //loop this 
  
  why = why +1*0.5;
   image(img2, ex, why, 300/2, 300/2);
    why2 = why2 +1*1.5;
   image(img2, ex+100, why2+100, 300/2, 300/2);
     why = why +1*0.5;
   image(img2, 200, why, 300/2, 300/2);
    why2 = why2 +1*1.5;
   image(img2, ex+500, why2+100, 300/2, 300/2);
       why3 = why3 +1*2.5;
   image(img2, ex+500, why3+350, 300/2, 300/2);

}
