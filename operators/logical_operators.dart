/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  assert(!false);
  
  var a = true;
  var b = false;
  assert(a && !b);
  assert(a || b);
  assert(b || a && !b); // && has higher priority than ||
}
