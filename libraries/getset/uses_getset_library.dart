/// Author: Yohan Beschi

import 'getset_library.dart';

/**
 * Entry Point 
 */
void main() {
  Logger logger = new Logger('getset_library');
  assert(!logger.enabled);
  logger.log("Doesn't print anything"); 
  logger.enabled = true;
  logger.log("I'm here");
}