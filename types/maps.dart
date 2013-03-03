/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  var map = {'key': 'value', '1': 1};
  Map realMap = {'key': 'value', '1': 1};
  
  Map newMap = new Map();
  newMap[1] = true;
  newMap['1'] = false;
  print(newMap);
  print('${newMap[1]} ${newMap['1']}');
  
  Map<String, int> genericMap = new Map();
  genericMap['one'] = 1;
  genericMap[2] = '2'; // Warning, but doesn't really matter
  print(genericMap);
}
