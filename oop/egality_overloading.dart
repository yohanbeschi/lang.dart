/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  User user1 = new User('root', 'secure');
  User user2 = new User('root', 'secure');
  assert(!identical(user1, user2));
  assert(user1 == user2);
  
  LoginService loginService = new LoginService();
  bool existsYes = loginService.exists(user1);
  assert(existsYes);
  
  bool existsNo = loginService.exists(new User('guest', 'secure'));
  assert(!existsNo);
}

class LoginService {
  static List<User> USERS_DB = [new User('root', 'secure')];
  
  bool exists(User user) {
    if (USERS_DB.contains(user)) {
      return true;
    } else {
      return false;
    }
  }
}

class User {
  String username;
  String password;
  
  User(this.username, this.password);
  
  bool operator ==(User other) {
    if (other == null) return false;
    if (this.username != other.username) return false;
    if (this.password != other.password) return false;
    return true;
  }
}