/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Calculator calculator1 = new Calculator(new Data('+', 5, 5));
  assert(10 == calculator1.compute());
  
  Calculator calculator2 = new Calculator.buildData('-', 5, 10);
  assert(-5 == calculator2.compute());
  
  Calculator calculator3 = new Calculator.parse('3 * 3');
  //print(calculator3.data.toString());
  assert(9 == calculator3.compute());
}

class Data {
  String operator;
  num left;
  num right;

  Data(String this.operator, num this.left, num this.right);
  
  String toString() => '$left $operator $right';
}

typedef double Operator(num left, num right); 

class Calculator {

  Data data;
  
  Calculator(this.data);
  
  Calculator.buildData(String operator, num left, num right) {
    this.data = new Data(operator, left, right);
  }
  
  Calculator.parse(String operation) {
    this.data = this.parseOperation(operation);
  }
  
  double compute() {
    Operator operator = findOperator(this.data.operator);
    return operator(this.data.left, this.data.right);
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

  double add(num left, num right) => (left + right).toDouble();
  double subtract(num left, num right) => (left - right).toDouble();
  double multiply(num left, num right) => (left * right).toDouble();
  double divide(num left, num right) => (left / right).toDouble();
  
  Data parseOperation(String operation) {
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
    
    return new Data(operationList[0], 
                    double.parse(operationList[1]), 
                    double.parse(operationList[2]));
  }
}