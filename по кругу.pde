float x,y,r; 
float inc = TWO_PI/25.0; 
void setup(){ 
  smooth();
size(750,500);  
} 
void draw() { 
background(0,168,107); 
inc=inc+1; 
x=375+round(r*cos(PI*inc/180)); 
y=250+round(r*sin(PI*inc/180));
r=125;
fill(251,160,227);
ellipse(x,y,20,20);
inc=inc+1; 
x=375+round(r*cos(PI*inc/180)); 
y=250+round(r*sin(PI*inc/180));
r=200;
fill(201,160,220);
ellipse(x,y,20,20);
inc=inc+1; 
x=375+round(r*cos(PI*inc/180)); 
y=250+round(r*sin(PI*inc/180));
r=50;
fill(186,85,211);
ellipse(x,y,30,30);






}