/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  new Point.fromJson({'x' : 10, 'y' : 20});
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  Point.fromJson(Map json) : x = json['x'], y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }
}