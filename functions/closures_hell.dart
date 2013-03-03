/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- Closure returning a function
  Function operator = (String opStr) {
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
    
    Function op = null;
    
    switch(opStr) {
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
  };
  
  assert(operator('*')(2, 5) == 10);
}

