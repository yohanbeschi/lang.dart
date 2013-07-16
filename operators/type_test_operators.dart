/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  assert('foo' is String);
  assert('foo' is! num);
  
  Iterable iterable = new List();
  (iterable as List).add(10);
}