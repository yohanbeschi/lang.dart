library myFirstLib;

class Logger {
  final String name;
  bool isEnabled = true;

  static final Map<String, Logger> cache = <String, Logger>{};
  
  factory Logger(String name) {
    if (cache.containsKey(name)) {
      return cache[name];
    } else {
      final logger = new Logger.internal(name);
      cache[name] = logger;
      return logger;
    }
  }
  
  Logger.internal(this.name);
  
  void log(String msg) {
    if (isEnabled) {
      print('$name - $msg');
    }
  }
}
