/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Point a = new Point(2, 3);
  Point b = new Point(2, 2);

  // Init values
  assert(a.x == 2);
  assert(a.y == 3);
  assert(b.x == 2);
  assert(b.y == 2);
  
  // Operations
  Point c = a + b;
  assert(c.x == 4);
  assert(c.y == 5);
}

class Point {
  int x;
  int y;
  
  Point(int this.x, int this.y);
  
  Point operator +(Point p) {
    return new Point(x + p.x, y + p.y);
  }

  Point operator -(Point p) {
    return new Point(x - p.x, y - p.y);
  }
}
