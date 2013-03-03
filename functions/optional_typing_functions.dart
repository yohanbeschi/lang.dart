/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // No types
  var squareAnonymous = (i) => i * i;

  var squaredNumAnonymous = squareAnonymous(3);
  assert(squaredNumAnonymous == 9);
 
  var squaredNum = square(2);
  assert(squaredNum == 4);
  
  // Type 'dynamic'
  dynamic squareAnonymousDyn = (dynamic i) => i * i;

  dynamic squaredNumAnonymousDyn = squareAnonymousDyn(3);
  assert(squaredNumAnonymousDyn == 9);
 
  dynamic squaredNumDyn = squareDyn(2);
  assert(squaredNumDyn == 4);
}

square(i) => i * i;

dynamic squareDyn(dynamic i) => i * i;