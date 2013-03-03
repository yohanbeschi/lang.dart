/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  int sum = 0;  
  for (int i = 0; i < 10; i++) {
    if (i % 2 != 0) {
      continue;
    }
    
    sum += i;
  }
  
  assert(sum == 20);
}