Fibonacci sFibo;
int n;
int i;

void setup() {
  size(1137,640);
  sFibo = new Fibonacci();
  background(#353b48);
}

void draw() {
  n = 7;
  sFibo.compute(n);
}

void mouseReleased() {
  sFibo.display(n);
}