int a1=1900;
int a2=1900;
int a3=1900;
float b1=random(0.5,6.5);
float b2=random(0.5,6.5);
float b3=random(0.5,6.5);
float c1,c2,c3;
int hit=0;
int loose=0,k=0;
PImage back1;
void setup()
{
   size(1900,700);
   back1=loadImage("back1.jpg");
   noCursor();
}
void draw()
{
   frameRate(120);
   if(k==0)
   {
      image(back1,0,0);
      image(back1,0,0,width,height);
      textSize(150);
      fill(0,0,255);
      text("WELCOME TO",300,200);
      text("GAME OF",375,400);
      text("ARROWS",400,600);
   }
   if(k==0 && keyPressed==true)
   {
      k=1; 
   }
   if(k==1){
   image(back1,0,0);
   image(back1,0,0,width,height);
   //textSize(150);
   //fill(#FFFFFF,50);
   //text("SHIVAM",400,200);
   //text("ANAND",450,400);
   //text("PAWAN",450,600);
   float x = mouseX;
   float y = mouseY;
   fill(255,0,0);
   beginShape();
   vertex(x,y);
   vertex(x-150,y+50);
   vertex(x-100,y+15);
   vertex(x-250,y+15);
   vertex(x-250,y-15);
   vertex(x-100,y-15);
   vertex(x-150,y-50);
   endShape();
   c1=100*b1;
   c2=100*b2;
   c3=100*b3;
   fill(0,0,255);
   ellipse(a1,c1,100,100);
   fill(0);
   ellipse(a1,c1,20,20);
   a1=a1-40;
   if(a1==0)
   {
      a1=1900;
      b1=random(0.5,6.5);
      loose=loose+1;
   }
   if((x<=a1+50 && x>=a1-50) && (y<=c1+50 && y>=c1-50))
   {  
     a1=1900;
     b1=random(0.5,6.5);
     hit=hit+1;
   }
   fill(0,0,255);
   ellipse(a2,c2,100,100);
   fill(0);
   ellipse(a2,c2,20,20);
   a2=a2-40;
   if(a2==0)
   {
      a2=1900;
      b2=random(0.5,6.5);
      loose=loose+1;
   }
   if((x<=a2+50 && x>=a2-50) && (y<=c2+50 && y>=c2-50))
   {  
     a2=1900;
     b2=random(0.5,6.5);
     hit=hit+1;
   }
   fill(0,0,255);
   ellipse(a3,c3,100,100);
   fill(0);
   ellipse(a3,c3,20,20);
   a3=a3-40;
   if(a3==0)
   {
      a3=1900;
      b3=random(0.5,6.5);
      loose=loose+1;
   }
   if((x<=a3+50 && x>=a3-50) && (y<=c3+50 && y>=c3-50))
   {  
     a3=1900;
     b3=random(0.5,6.5);
     hit=hit+1;
   }
   if(loose==6)
   {
       textSize(150);
       fill(255,0,0);
       text("LOOSE",450,200);
       text("THE",500,400);
       text("GAME",475,600);
       noLoop();
   }
   if(hit==30)
   {
       textSize(150);
       fill(255,0,0);
       text("WIN",500,200);
       text("THE",500,400);
       text("GAME",475,600);
       noLoop();
   }
}}