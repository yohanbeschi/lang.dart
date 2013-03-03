/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // With OL
  String ul = buildList(['foo', 'bar', 'foobar', 'barfoo']);
  String expectedUl = '<ul>'
                        '<li>foo</li>'
                        '<li>bar</li>'
                        '<li>foobar</li>'
                        '<li>barfoo</li>'
                       '</ul>';
  assert(expectedUl == ul);
  
  String ol = buildList(['foo', 'bar', 'foobar', 'barfoo'], isOl: true);
  String expectedOl = '<ol>'
                        '<li>foo</li>'
                        '<li>bar</li>'
                        '<li>foobar</li>'
                        '<li>barfoo</li>'
                       '</ol>';
  assert(expectedOl == ol);
}

String buildList(List<String> list, {bool isOl: false}) {
  StringBuffer sb = new StringBuffer();
  sb.write(isOl ? '<ol>' : '<ul>');
  
  for (String element in list) {
    sb.write('<li>');
    sb.write(element);
    sb.write('</li>');
  }
  
  sb.write(isOl ? '</ol>' : '</ul>');
  
  return sb.toString();
}
