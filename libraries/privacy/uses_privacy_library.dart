/// Author: Yohan Beschi

import 'privacy_library.dart';

/**
 * Entry Point 
 */
void main() {
  Logger logger = new Logger('privacy_library');
  logger.log("I'm here");
  
  //---------------------------
  // All the following code try to use private elements
  // which is not possible outside a library.
  //---------------------------
  // Private instance field
  //print(logger._name);
  
  // Private static field
  //print(Logger._cache);
  
  // Private contructor
  //new Logger._internal('Test');
  
  // Private Class
  //new _Printer('Test');
  
  // Private High Level function
  //_doPrint('Test');
}