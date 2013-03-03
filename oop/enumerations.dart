/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  assert(Unit.CM == Unit.CM);
  assert('cm' == Unit.CM.toString());
}

class Enum {
  final String name;

  const Enum(this.name);

  String toString() => name;
}


class Unit extends Enum {
  static const Unit CM = const Unit.internal('cm');
  static const Unit PX = const Unit.internal('px');
  
  const Unit.internal(String name) : super(name);
}
