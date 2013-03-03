/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  print('10 is num: ${10 is num}');       // true
  print('10 is int: ${10 is int}');       // true
  print('10 is double: ${10 is double}'); // false
  print('');
  print('0xFF is num: ${0xFF is num}');       // true
  print('0xFF is int: ${0xFF is int}');       // true
  print('0xFF is double: ${0xFF is double}'); // false
  print('');
  print('1.1 is num: ${1.1 is num}');       // true
  print('1.1 is int: ${1.1 is int}');       // false
  print('1.1 is double: ${1.1 is double}'); // true
  print('');
  print('1e-10 is num: ${1e-10 is num}');       // true
  print('1e-10 is int: ${1e-10 is int}');       // false
  print('1e-10 is double: ${1e-10 is double}'); // true
  print('');
  
  num integer = 30;
  print('integer is num: ${integer is num}');       // true
  print('integer is int: ${integer is int}');       // true
  print('integer is double: ${integer is double}'); // false
  print('');
  
  num intgerToo = 3.0;
  print('intgerToo is num: ${intgerToo is num}');       // true
  print('intgerToo is int: ${intgerToo is int}');       // true
  print('intgerToo is double: ${intgerToo is double}'); // false
  print('');
  
  num doubl = 1.1;
  print('doubl is num: ${doubl is num}');       // true
  print('doubl is int: ${doubl is int}');       // false
  print('doubl is double: ${doubl is double}'); // true
  print('');
  
  int realInt = 3;
  print('realInt is num: ${realInt is num}');       // true
  print('realInt is int: ${realInt is int}');       // true
  print('realInt is double: ${realInt is double}'); // false
  print('');
  
  double realDouble = 1.1;
  print('realDouble is num: ${realDouble is num}');       // true
  print('realDouble is int: ${realDouble is int}');       // false
  print('realDouble is double: ${realDouble is double}'); // true
}
