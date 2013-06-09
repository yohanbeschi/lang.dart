/// Author: Yohan Beschi
import 'dart:mirrors';

/**
 * Entry Point 
 */
void main() {
  MyList list = new MyList();
  list.add(5);
  assert(1 == list.length);
  list.add(9);
  assert(2 == list.length);
  assert(14 == list.sum);
}

class MyList {
  List<int> list;
  
  MyList() {
    this.list = new List();
  }
  
  int get sum => this.list.reduce((p, e) => p + e);
  
  dynamic noSuchMethod(Invocation invocation) {
    InstanceMirror mirror = reflect(this.list);
    return mirror.delegate(invocation);
  }
}