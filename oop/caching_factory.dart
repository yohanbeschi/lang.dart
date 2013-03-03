/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Logger logger = new Logger('caching_factory');
  logger.isEnabled = true;
  
  assert(1 == Logger.cache.length);
  
  Logger newLogger = new Logger('caching_factory');
  assert(logger.isEnabled);
}

class Logger {
  final String name;
  bool isEnabled = false;

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

