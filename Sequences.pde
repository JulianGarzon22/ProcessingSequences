Fibonacci sFibo;
int n;

void setup() {
  size(640,640);
  sFibo = new Fibonacci();
}

void draw() {
  background(#353b48);
  
  n = 4;
  sFibo.compute(n);
  sFibo.display(n);
}
