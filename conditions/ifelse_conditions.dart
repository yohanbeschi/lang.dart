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
    if (e <= 2) {
      leTwo.add(e);
    } else if (e > 7) {
      gtSeven.add(e);
    } else {
      others.add(e);
    }
  }
  
  assert(leTwo.toString() == '[1, 2]');
  assert(gtSeven.toString() == '[8, 9]');
  assert(others.toString() == '[3, 4, 5, 6, 7]');
  
  //---- filter
  assert(list.where((e) => e <= 2).toList().toString() == '[1, 2]'); 
  assert(list.where((e) => e > 7).toList().toString() == '[8, 9]');
  assert(list.where((e) => e > 2 && e <= 7).toList().toString() == '[3, 4, 5, 6, 7]');
}
