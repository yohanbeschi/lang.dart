/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- Simple use of a positional parameter
  assert(power(2) == 4);
  assert(power(2, 3) == 8);
  
  //---- Positional parameter with default value 
  assert(powerWithDefault(2) == 4);
  assert(powerWithDefault(2, 3) == 8);
  
  //---- Multiple positional parameter
  assert(multiplyAndDivide(2, 2) == 2);
  assert(multiplyAndDivide(2, 3, null) == 6);
  assert(multiplyAndDivide(2, 3, 2) == 3);
  assert(multiplyAndDivide(10, null, 5) == 2);
  
  //---- Use of ? parameter (Deprecated)
  // Default value of divisor parameter ignored
  //assert(multiplyAndDivideExist(2, 2) == 4); 
  
  // The following call crash. divisor is present but is null
  //assert(multiplyAndDivideExist(2, 3, null) == 6);
  
  // multiplier and divisor parameters are presents
  //assert(multiplyAndDivideExist(2, 3, 2) == 3);
  
  // The following call crash. multiplier is present but is null
  //assert(multiplyAndDivideExist(10, null, 5) == 2);
}

int power(int number, [int exponent]) {
  int result = 1;
  
  if (exponent == null) {
    result = number * number;
  }
  else {
    for(int i = exponent; i > 0; i--) {
      result *= number;
    }
  }
  
  return result;
}

int powerWithDefault(int number, [int exponent = 2]) {
  int result = 1;

  for(int i = exponent; i > 0; i--) {
    result *= number;
  }
  
  return result;
}

num multiplyAndDivide(num number, [num multiplier, num divisor = 2]) {
  if (multiplier != null) {
    number *= multiplier;
  }
  
  if (divisor != null) {
    number /= divisor;
  }
  
  return number;
}

/*
num multiplyAndDivideExist(num number, [num multiplier, num divisor = 2]) {
  if (?multiplier) {
    number *= multiplier;
  }
  
  if (?divisor) {
    number /= divisor;
  }
  
  return number;
}
*/