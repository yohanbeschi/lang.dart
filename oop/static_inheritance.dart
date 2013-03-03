/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  ExtendedStringUtils utils = new ExtendedStringUtils();
  assert('StringUtils' == utils.getParentClassName());
  
  // Incorrect ExtendedStringUtils doesn't have any
  // className field. 
  //ExtendedStringUtils.className;

  // Incorrect - ExtendedStringUtils doesn't have any
  // isEmpty() method. 
  //ExtendedStringUtils.isEmpty('');
  
  // Correct
  assert(StringUtils.isEmpty(null));
  
  // Correct
  assert(ExtendedStringUtils. isBlank(''));
}

class StringUtils {
  static String className = 'StringUtils';
  
  static bool isEmpty(String s) {
    return s == null;
  }
}

class ExtendedStringUtils extends StringUtils {
  static bool isBlank(String s) {
    return StringUtils.isEmpty(s) || s.length == 0;
  }
  
  String getParentClassName() {
    return StringUtils.className;
  }
}

