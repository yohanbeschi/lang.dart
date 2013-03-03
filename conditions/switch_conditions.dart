/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> leTwo = new List();
  List<int> gtSeven = new List();
  List<int> others = new List();
  
  for (int e in list) {
    switch(e) {
      case 1:
      case 2:
        leTwo.add(e);
        break;
      case 8:
      case 9:  
        gtSeven.add(e);
        break;
      default:
        others.add(e);
        break;
    }
  }
  
  assert(leTwo.toString() == '[1, 2]');
  assert(gtSeven.toString() == '[8, 9]');
  assert(others.toString() == '[3, 4, 5, 6, 7]');
  
  bool e = false;
  switch(e) {
    case false :
      print('hello');
      break;
  }
}

class Yo {
  const Yo();
}
