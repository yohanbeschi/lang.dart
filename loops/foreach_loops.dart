/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  
  //---- foreach
  int sum = 0;
  list.forEach((e) => sum += e);
  assert(sum == 45);
  
  //---- reduce
  sum = list.reduce((previous, e) =>  previous + e);
  assert(sum == 45);
  
  //---- filter + reduce
  // Add even numbers
  sum = list.where((e) => e % 2 == 0).reduce((previous, e) =>  previous + e);
  print(sum);
  assert(sum == 20);
}
