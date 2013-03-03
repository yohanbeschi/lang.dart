/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // First Try
  String ul = buildList(['foo', 'bar', 'foobar', 'barfoo']);
  String expectedUl = '<ul>'
                        '<li>foo</li>'
                        '<li>bar</li>'
                        '<li>foobar</li>'
                        '<li>barfoo</li>'
                       '</ul>';
  assert(expectedUl == ul);
}

String buildList(List<String> list) {
  StringBuffer sb = new StringBuffer();
  sb.write('<ul>');
  
  for (String element in list) {
    sb.write('<li>');
    sb.write(element);
    sb.write('</li>');
  }
  
  sb.write('</ul>');
  
  return sb.toString();
}
