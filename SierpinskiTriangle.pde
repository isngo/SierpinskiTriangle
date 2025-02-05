boolean p3Check = true;
boolean p4Check = false;
boolean p5Check = false;
public void setup()
{
  size(500,500);
}
public void draw()
{
  if(p3Check == true){
    background(0,23,54);
    sierpinski3(0,500,500);
  }
  if(p4Check == true){
    background(255);
    sierpinski4(0,500,500);
  }
  if(p5Check == true){
    background(242,232,82);
    sierpinski5(0,500,500);
  }
}

public void sierpinski3(int x, int y, int len) 
{
  if(len<=20){
    fill(255,197,74);
    triangle(x,y, x+len,y, x+len/2,y-len);
  } else{
    sierpinski3(x,y,len/2);
    sierpinski3(x+len/2,y,len/2);
    sierpinski3(x+len/4,y-len/2,len/2);
    fill(0,187,250);
    triangle(x+len/2,y-len, x+len,y, x+(3*len/2),y-len);
  }
  stroke(0,23,54);
  triangle(0,500, 0,0, 250,0);
  triangle(250,0, 500,0, 500,500);
}

public void sierpinski4(int x, int y, int len) 
{
  if(len<=20){
    fill(250,166,34);
    triangle(x,y, x+len,y, x+len/2,y-len);
  } else{
    sierpinski4(x,y,len/2);
    sierpinski4(x+len/2,y,len/2);
    sierpinski4(x+len/4,y-len/2,len/2);
    fill(255,229,44);
    triangle(x+len/2,y-len, x+len,y, x+(3*len/2),y-len);
  }
  stroke(0,23,54);
  triangle(0,500, 0,0, 250,0);
  triangle(250,0, 500,0, 500,500);
}

public void sierpinski5(int x, int y, int len) 
{
  if(len<=20){
    fill(217,35,35);
    triangle(x,y, x+len,y, x+len/2,y-len);
  } else{
    sierpinski5(x,y,len/2);
    sierpinski5(x+len/2,y,len/2);
    sierpinski5(x+len/4,y-len/2,len/2);
    fill(13,13,13);
    triangle(x+len/2,y-len, x+len,y, x+(3*len/2),y-len);
  }
  stroke(13,13,13);
  triangle(0,500, 0,0, 250,0);
  triangle(250,0, 500,0, 500,500);
}

public void keyPressed()
{
  if(key == '3'){
    p3Check = true;
    p4Check = false;
    p5Check = false;
  }
  if(key == '4'){
    p3Check = false;
    p4Check = true;
    p5Check = false;
  }
  if(key == '5'){
    p3Check = false;
    p4Check = false;
    p5Check = true;
  }
}
