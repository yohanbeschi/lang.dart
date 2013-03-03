/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  var x = 1;
  var y = 1;
  assert(x++ == 1); // x = 1
  assert(x == 2);
  assert(x-- == 2); // x = 2
  assert(x == 1);
  assert(++x == 2); // x = 2
  assert(--x == 1); // x = 1
  
  var a = 100;
  var b = 3;
  assert(a + b == 103);
  assert(b - a == -97);
  assert(a * b == 300);
  assert( a / b > 33.3 && a / b < 33.4);
  assert(a ~/ b == 33);  
  assert(a % b == 1);   
}
