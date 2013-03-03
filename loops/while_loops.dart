/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sum = 0;
      
  int i = 0;
  while (i < list.length) {
    sum += list[i];
    
    i++;
  }
  
  assert(sum == 45);
}
