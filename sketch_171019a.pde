float x,y,r; 
float inc = TWO_PI/25.0; 
void setup(){ 
  smooth();
size(750,500); 
r=100; 
} 
void draw() { 
background(255,24,173); 
inc=inc+1; 
x=375+round(r*cos(PI*inc/280)); 
y=250+round(r*sin(PI*inc/280));
fill(24,28,255);
ellipse(x,y,60,60); 
}