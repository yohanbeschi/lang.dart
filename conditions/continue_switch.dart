/// Author: Yohan Beschi

/**
 * Switch case with continue keyword
 * Entry Point 
 */
void main() {
  for (int i = 1; i <= 3; i++) {
    switch(i) {
      case 1 :
        print('1 - $i');
        continue goto;  // Jump to label 'goto'
      case 3 :
        print('3 - $i');
        break;
      goto :            // Label 'goto'
      case 2 :
        print('2 - $i');
        break;
    }
  }
}