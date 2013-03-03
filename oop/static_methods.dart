/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  assert(StringUtils.isEmpty(null));
  assert(!StringUtils.isEmpty(""));
  
  assert(!StringUtils.isNotEmpty(null));
  assert(StringUtils.isNotEmpty(""));
  
  assert(StringUtils.isBlank(null));
  assert(StringUtils.isBlank(""));
  assert(!StringUtils.isBlank("Foo"));
  
  assert(!StringUtils.isNotBlank(null));
  assert(!StringUtils.isNotBlank(""));
  assert(StringUtils.isNotBlank("Foo"));
}

class StringUtils {
  static bool isEmpty(String s) {
    return s == null;
  }
  
  static bool isNotEmpty(String s) {
    return !StringUtils.isEmpty(s);
  }
  
  static bool isBlank(String s) {
    return StringUtils.isEmpty(s) || s.length == 0;
  }
  
  static bool isNotBlank(String s) {
    return !StringUtils.isBlank(s);
  }
}