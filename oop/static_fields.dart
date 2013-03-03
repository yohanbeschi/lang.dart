/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Point pointOne = new Point();
  assert(1 == Point.counter);
  
  Point.counter = 50;
  
  Point pointTwo = new Point();
  assert(51 == Point.counter);
}

class Point {
  static int counter = 0;
  
  Point() {
    counter++;
  }
}