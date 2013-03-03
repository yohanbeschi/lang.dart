/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // Functions declarations
  Function squareAnonymous = (int i) => i * i;
  int squareLocale(int i) => i * i;
  
  // Functions calls
  int squaredNum = square(2);
  assert(squaredNum == 4);
  
  int squaredNumAnonymous = squareAnonymous(3);
  assert(squaredNumAnonymous == 9);
  
  int squaredNumLocale = squareLocale(3);
  assert(squaredNumLocale == 9);
  
  // If a statement return nothing, a function return null 
  Function returnNull = () => print('This function return null');
  assert(null == returnNull());
  assert(null == returnNullToo()); // void == null
}

int square(int i) => i * i;

void returnNullToo() {
  print("This function doesn't return anything");
}
