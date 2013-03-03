/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  int left = 2;
  int right = 3;
  
  //---- Wrong use 
  Function add = () => left + right;
  num wrong = execute(add);
  assert(5 == wrong);
  
  //---- Correct use
  num test = adder(10, 6)();
  assert(16 == test);
  
  num sum = execute(adder(right, left));
  assert(5 == sum);
}

num execute(Function operation) {
  return operation();
}

Function adder(num left, num right)
  => () 
    => left + right;

/*
Function adder(num left, num right) {
  return () {
    return left + right;
  };
}
*/