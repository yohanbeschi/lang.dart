library mySecondLib;

class Logger {
  final String _name;
  bool isEnabled = true;

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
    if (!isEnabled) {
      new _Printer('$_name - $msg')._print();
    }
  }
}

class _Printer {
  String _text;
  
  _Printer(String this._text);
  
  void _print() {
    _doPrint(_text);
  }
}

void _doPrint(String string) {
  print(string);
}