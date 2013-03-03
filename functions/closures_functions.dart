/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // The variable MUST be declared before the closurs using it 
  int number;
  
  // Shorthand functions declaration, but could be longhand
  Function incToOne = () => number++;
  int incToFive() => number += 5;
  
  number = 1;
  
  // number += 1 == 1 + 1
  incToOne();
  assert(number == 2);
  
  number = 5;
  
  // number += 5 == 5 + 5
  incToFive();
  assert(number == 10);
  
  // number += 1 == 10 + 1
  incToOne();
  assert(number == 11);
}