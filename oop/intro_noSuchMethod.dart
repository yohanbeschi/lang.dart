/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // Inexisting Field or Method 
  bool exceptionThrown = false;
  try {
    MyClass myClass = new MyClass();
    myClass.doSomething();
  } on NoSuchMethodError {
    exceptionThrown = true;
  }
  
  assert(exceptionThrown);
  
  // Using noSuchMethod()
  MyClassWithNoSuchMethod obj = new MyClassWithNoSuchMethod();
  print('\n------ Getter ------ obj.hello');
  obj.hello;
  print('\n------ Setter ------ obj.hello = 10');
  obj.hello=10;
  print('\n------ Method ------ obj.doSomething(25, clean:true)');
  obj.doSomething(25, clean:true);
}

class MyClass {
  
}

class MyClassWithNoSuchMethod {
  dynamic noSuchMethod(Invocation invocation) {
    print('isAccessor: ${invocation.isAccessor}');
    print('isSetter: ${invocation.isSetter}');
    print('isGetter: ${invocation.isGetter}');
    print('isMethod: ${invocation.isMethod}');
    print('memberName: ${invocation.memberName}');
    print('positionalArguments: ${invocation.positionalArguments}');
    print('namedArguments: ${invocation.namedArguments}');
    print('runtimeType: ${invocation.runtimeType}');
  }
}