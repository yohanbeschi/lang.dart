
void main() {
  // Print strings
  print('------ Print strings ------');
  print('Hello world');
  print("Hello world");
  print('');
  
  var singleQuotes = 'Single quotes.';
  var doubleQuotes = "Double quotes.";
  String singleQuotesWithType = 'Single quotes.';
  String doubleQuotesWithType = "Double quotes.";
  
  // Escaping characters
  print('------ Escaping characters ------');
  var escaping = 'It\'s easy to escape the string delimiter.';

  // Special characters
  print('------ Special characters ------');
  print('Hello\nWorld-');
  print('Hello\tWorld-');
  print('');
  
  // Check strings types
  print('------ Check strings types ------');
  print("escaping is Object: ${escaping is Object}");
  print("Hello world is String: ${'Hello world' is String}");
  print("escaping is String: ${escaping is String}");
  print('');
  
  // String concatenation
  print('------ String concatenation ------');
  print('This ' 'is' 'a' 'string');
  print('This ' 
        'is' 
        'a' 
        'multi-line'
        'string');
  print('');
  
  // String interpolation
  print('------ String interpolation ------');
  print('Hello $singleQuotes ${doubleQuotesWithType.toUpperCase()}');
  print('');
  
  // Multi-line String
  print('------ Multi-line String ------');
  print('''With
          triple simple quotes 
          I can define
          a string
          over multiple
          lines
          ''');
  print("""And it's
triple double
quotes""");
  print('');
  
  // Raw String
  print('------ Raw String ------');
  print(r'Hello \n $singleQuotes ${doubleQuotesWithType.toUpperCase()}');
  print('');
}
