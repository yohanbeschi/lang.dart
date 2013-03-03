/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  LoginController loginController = new LoginController(new AuthenticationService());
  User user = loginController.login('root', 'secure');
  assert(null == user);
  
  LoginController loginControllerWithMock = new LoginController(new MockAuthenticationService());
  User userWithMock = loginControllerWithMock.login('root', 'secure');
  assert(null != userWithMock);
}

class AuthenticationService {
  User checkUser(String username, String password) {
    // Check if user exist in database
    return null;
  }
}

class MockAuthenticationService implements AuthenticationService {
  static List<User> USERS_DB = [new User('root', 'secure')];
  
  User checkUser(String username, String password) {
    User user = new User(username, password);

    return get(USERS_DB, user);
  }
  
  static User get(Collection<User> users, User user) {
    for (User u in users) {
      if (u.userName == user.userName
          && u.password == user.password) {
        return u;
      }
    }
    
    return null;
  }
}

class LoginController {
  AuthenticationService authService;
  
  LoginController(AuthenticationService this.authService);
  
  User login(String username, String password) 
    => this.authService.checkUser(username, password);
}

class User {
  String userName;
  String password;
  
  User(String this.userName, String this.password);
}