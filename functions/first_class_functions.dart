/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Function objCompute = compute;
  assert(objCompute is Object);
  assert(objCompute is Function);
  
  List operation1 = ['+', '5', '2'];
  num result1 = compute(operation1);
  assert(result1 == 7);
  
  List operation2 = ['/', '5.5', '2'];
  num result2 = compute(operation2);
  assert(result2 == 2.75);
  
  List operation = parse('5 + 2');
  num result = compute(operation);
  assert(result == 7);
}

num compute(List operation) {
  Function operator = findOperator(operation[0]);
  double left = double.parse(operation[1]);
  double right = double.parse(operation[2]);
  
  return operator(left, right);
}

Function findOperator(String operator) {
  Function op = null;
  
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