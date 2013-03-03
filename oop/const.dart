/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- Const in place of new
  final Color blue1 = const Color('blue');
  final Color blue2 = const Color('blue');
  assert(blue1 == blue2);
  assert(identical(blue1, blue2));
  
  //---- Using new
  final Color blue3 = new Color('blue');
  final Color blue4 = new Color('blue');
  assert(blue3 != blue4);
}

class Color {
  final String name;

  const Color(this.name);
}