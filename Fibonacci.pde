class Fibonacci {

  float compute(float n) {
    if (n == 1)
      return 0;
    if (n == 2)
      return 1;
    if (n > 2)
      return compute(n-2) + compute(n-1);
    return -1;
  } 

  void display(float term) {
    float x = (height/compute(term))-25;
    float r = random(255);
    float g = random(255);
    float b = random(255);
    
    stroke(#f5f6fa);
    strokeWeight(5);
    
    translate((width/2)+2*x, (height/2)+x);
    fill(r,g,b);
    rect(0, 0, x*compute(2), x*compute(2));
    
    r = random(255);
    g = random(255);
    b = random(255);
    translate(-x*compute(2), 0);
    fill(r,g,b);
    rect(0, 0, x*compute(3), x*compute(3));
    
    r = random(255);
    g = random(255);
    b = random(255);
    translate(0, x*compute(3));
    fill(r,g,b);
    rect(0, 0, x*compute(4), x*compute(4));
    
    r = random(255);
    g = random(255);
    b = random(255);
    translate(x*compute(4), -x*compute(3));
    fill(r,g,b);
    rect(0, 0, x*compute(5), x*compute(5));
    
    r = random(255);
    g = random(255);
    b = random(255);
    translate(-x*compute(4), -x*compute(6));
    fill(r,g,b);
    rect(0, 0, x*compute(6), x*compute(6));
    
    r = random(255);
    g = random(255);
    b = random(255);
    translate(-x*compute(7), 0);
    fill(r,g,b);
    rect(0, 0, x*compute(7), x*compute(7));
  }
}