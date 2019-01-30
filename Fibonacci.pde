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
    int i = 1;
    float n = 2;
    stroke(#f5f6fa);
    strokeWeight(5);
    noFill();
    translate(50,50);
    while(i < term) {
      float z = (width / (compute(term) + compute(term - 1))) - 100;
      pushMatrix();
      translate(z*compute(n-1),0);
      rect(0,0,compute(n)*z,compute(n)*z);
      rotate(PI/2.0);
      popMatrix();
      if(n <= term) {
        n++;
      }
      i++;
    }
  }
}
