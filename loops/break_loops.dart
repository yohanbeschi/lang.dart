/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  int sum = 0;  
  
  while(true) {
    if (sum == 100) {
      break;
    }
    
    sum++;
  }
  
  assert(sum == 100);
}