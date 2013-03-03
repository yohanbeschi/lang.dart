/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  assert(add is Object);
  assert(add is Function);
  assert(add is Operator);
  
  List operation1 = ['+', '5', '2'];
  int result1 = computeList(operation1);
  assert(result1 == 7);
  
  List operation2 = ['-', '5', '2'];
  int result2 = computeList(operation2);
  assert(result2 == 3);
  
  assert(compute(add, 5, 2) == 7);
  assert(compute(subtract, 5, 2) == 3);
  
  List operation = parse('5 + 2');
  int result = computeList(operation);
  assert(result == 7);
}

typedef int Operator(num left, num right); 

int computeList(List operation) {
  Operator operator = findOperator(operation[0]);
  int left = int.parse(operation[1]);
  int right = int.parse(operation[2]);
  
  return operator(left, right);
}

int compute(Operator operator, num left, num right) {
  return operator(left, right);
}

Operator findOperator(String operator) {
  Operator op = null;
  
  switch(operator) {
    case '+':
      op = add;
      break;
    case '-':
      op = subtract;
      break;
    case '*':
      op = multiply;
      break;
    case '/':
      op = divide;
      break;
  }
  
  return op;
}

num add(num left, num right) {
  return left + right;
}

num subtract(num left, num right) {
  return left - right;
}

num multiply(num left, num right) {
  return left * right;
}

num divide(num left, num right) {
  return left / right;
}

List parse(String operation) {
  List operationList = new List(3);
  
  StringBuffer current = new StringBuffer();
  
  for (int i = 0; i <= operation.length; i++) {
    if (i == operation.length) {
      operationList[2] = current.toString();
      break;
    }
    
    int char = operation.codeUnitAt(i);
    if (char >= 48 && char <= 57) {
      current.write(new String.fromCharCodes([char]));
    } else if (char == 42 || char == 43 || char == 45 || char == 47) {
      operationList[0] = new String.fromCharCodes([char]);
      operationList[1] = current.toString();
      current = new StringBuffer();
    }
  }
  
  return operationList;
}