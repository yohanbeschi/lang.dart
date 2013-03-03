/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  assert('foo' is String);
  assert('foo' is! num);
  
  Collection list = new List();
  (list as List).add(10);
}
