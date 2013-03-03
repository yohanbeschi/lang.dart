/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Map<String, Controller> controllers = 
    {'showcase/': new Showcase(), 'login/' : new Login()};
  
  // 1st Request
  print('---- First Request');
  String request = 'login/';
  controllers[request].execute();
  
  // 2nd request
  print('---- Second Request');
  request = 'showcase/';
  controllers[request].execute();
}

abstract class Controller {
  void execute() {
    start();
    doSomething();
    end();
  }
  
  void start() {
    print("Start");
  }
  
  void end() {
    print("End");
  }
  
  void doSomething();
}

class Showcase extends Controller {
  void doSomething() {
    print("Showcase");
  }
}

class Login extends Controller {
  void doSomething() {
    print("Login");
  }
}