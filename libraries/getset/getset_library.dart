library mySecondLib;

class Logger {
  final String _name;
  bool _isEnabled = false;

  static final Map<String, Logger> _cache = <String, Logger>{};
  
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
  
  Logger._internal(this._name);
  
  void log(String msg) {
    if (_isEnabled) {
      print('$_name - $msg');
    }
  }
  
  bool get enabled => _isEnabled;
  
       set enabled(bool isEnabled) => _isEnabled = isEnabled;
}