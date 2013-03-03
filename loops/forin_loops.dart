/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sum = 0;
      
  for (int element in list) {
    sum += element;
  }
  
  assert(sum == 45);
}
