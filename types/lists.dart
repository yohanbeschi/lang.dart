/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  var list = [1, true, 'String', 5.6e5];
  print(list);
  
  List realList = [1, true, 'String', 5.6e5];
  //realList[4] = 10; // Exception
  realList.add(10);
  print(realList);
  
  Collection realCollection = [1, true, 'String', 5.6e5];
  print(realCollection);
  
  // Lists types
  print('');
  print('list is Collection ${list is Collection}');
  print('list is List ${list is List}');
  //print('list is Sequence ${list is Sequence}');
  print('list is Iterable ${list is Iterable}');
  print('');
  print('realList is Collection ${realList is Collection}');
  print('realList is List ${realList is List}');
  //print('realList is Sequence ${realList is Sequence}');
  print('realList is Iterable ${realList is Iterable}');
  print('');
  print('realCollection is Collection ${realCollection is Collection}');
  print('realCollection is List ${realCollection is List}');
  //print('realCollection is Sequence ${realCollection is Sequence}');
  print('realCollection is Iterable ${realCollection is Iterable}');
  print('');
  
  // Creating an extendable list
  List dynamicList = new List();
  //dynamicList[0] = 1; // throws an exception
  dynamicList.add(1);
  dynamicList.add(true);
  dynamicList.add('String');
  dynamicList.add(5.6e5);
  dynamicList[0] = 'String';
  print('dynamicList: ${dynamicList}');
  print('');
  
  // Creating an empty fixed size list
  // List fixedList = [null, null, null, null];
  List fixedList = new List(4);
  //fixedList.add(1); // throws an Exception, try to add the element at index 4
  fixedList[0] = 1;
  fixedList[1] = true;
  fixedList[2] = 'String';
  fixedList[3] = 5.6e5;
  //fixedList[4] = 10; // throws an exception
  fixedList[0] = 'String';
  //fixedList.add(100);
  print('fixedList: ${fixedList}');
  print('');
  
  // Generics
  List<int> genericsList = new List();
  genericsList.add(1);
  // Warnings, but doesn't really matter
  genericsList.add(true); 
  genericsList.add('String');
  genericsList.add(5.6e5);
  print('dynamicList: ${genericsList}');
  print('');
  
  // Multi-dimension list
  List multiDimensionList = [[10, 20, 30], [40, 50, 60]];
  print('${multiDimensionList[0][1]} ${multiDimensionList[1][2]}');
}
