/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  int age = 30;
  
  // Without cascade
  StringBuffer sb = new StringBuffer();
  sb.write('He is ');
  sb.write(age);
  sb.write(' years old.');
  
  assert('He is 30 years old.' == sb.toString());
  
  // With casade
  StringBuffer sb2 = new StringBuffer()
    ..write('He is ')
    ..write(++age)
    ..write(' years old.');
  
  assert('He is 31 years old.' == sb2.toString());
}