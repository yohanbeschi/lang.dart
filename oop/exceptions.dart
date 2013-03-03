/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  bool exceptionThrown = false;
  //  A specific exception without catch
  print('------ A specific exception without catch ------');
  try {
    throw new List();
  } on List {
    print('List thrown');
    exceptionThrown = true;
  }
  assert(exceptionThrown);
  
  // A specific exception
  print('------ A specific exception ------');
  exceptionThrown = false;
  try {
    throw new Exception('This is an exception');
  } on Exception catch(e) {
    print('Exception thrown: ${e.toString()}');
    exceptionThrown = true;
    assert('Exception: This is an exception' == e.toString());
  }
  
  assert(exceptionThrown);
  
  // No specified type, handles all exceptions
  print('------ No specified type ------');
  exceptionThrown = false;
  try {
    throw new Exception();
  } catch(e) {
    print('Something really unknown: $e');
    exceptionThrown = true;
  }
  
  assert(exceptionThrown);
  
  // Multi catchs
  print('------ Multi catches ------');
  try {
    throw new MyError();
  } on MyError { // Catched here
    print('Too bad something unexpected happened');
  } on Exception catch(e) { 
    print('Unknown exception: $e');
  } catch(e) {
    print('Something really unknown: $e');
  }

  // Finally
  print('------ Exception + Finally ------');
  exceptionThrown = false;
  bool wentThroughFinally = false;
  try {
    throw new MyError();
  } catch(e) {
    exceptionThrown = true;
  } finally {
    wentThroughFinally = true;
  }
  
  assert(exceptionThrown);
  assert(wentThroughFinally);
  
  print('------ No Exception + Finally ------');
  exceptionThrown = false;
  wentThroughFinally = false;
  int sum = 0;
  try {
    sum = 10 + 10;
  } catch(e) {
    exceptionThrown = true;
  } finally {
    wentThroughFinally = true;
  }
  
  assert(!exceptionThrown);
  assert(wentThroughFinally);
  assert(20 == sum);
  
  print('Exceptions - Done');
}

class MyError {
  
}