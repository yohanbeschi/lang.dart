/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- With OL
  // UL
  String ul = buildList((String element) => element.toUpperCase(), 
                        ['foo', 'bar', 'foobar', 'barfoo']);
  String expectedUl = '<ul>'
                        '<li>FOO</li>'
                        '<li>BAR</li>'
                        '<li>FOOBAR</li>'
                        '<li>BARFOO</li>'
                       '</ul>';
  assert(expectedUl == ul);
  
  // OL
  String ol = buildList((String element) => element.toUpperCase(), 
                        ['foo', 'bar', 'foobar', 'barfoo'], 
                        isOl: true);
  String expectedOl = '<ol>'
                        '<li>FOO</li>'
                        '<li>BAR</li>'
                        '<li>FOOBAR</li>'
                        '<li>BARFOO</li>'
                       '</ol>';
  assert(expectedOl == ol);
}

typedef String Formatter(String text);

String buildList(Formatter format, List<String> list, {bool isOl: false}) {
  StringBuffer sb = new StringBuffer();
  sb.write(isOl ? '<ol>' : '<ul>');
  
  for (String unformattedText in list) {
    sb.write('<li>');
    sb.write(format(unformattedText));
    sb.write('</li>');
  }
  
  sb.write(isOl ? '</ol>' : '</ul>');
  
  return sb.toString();
}