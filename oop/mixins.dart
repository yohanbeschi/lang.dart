/// Author: Yohan Beschi
import 'dart:mirrors';

/**
 * Entry Point 
 */
void main() {
  StudentManager studentManager = new StudentManager();
  studentManager.add(new Student('Foo', 'Bar'));
  assert(1 == studentManager.length);
}

class Student {
  String firstName;
  String lastName;
  
  Student(String this.firstName, String this.lastName);
  
  String getFullName() {
    return '$firstName $lastName';
  }
}

class MyList {
  List list = new List();

  dynamic noSuchMethod(Invocation invocation) {
    InstanceMirror mirror = reflect(this.list);
    return mirror.delegate(invocation);
  }
}

class StudentManager extends Object with MyList {
}
