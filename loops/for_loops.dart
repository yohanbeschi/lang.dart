/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sum = 0;
      
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  
  assert(sum == 45);
}
