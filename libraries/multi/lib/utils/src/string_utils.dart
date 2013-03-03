part of utils;

bool isEmpty(String s) {
  return s == null;
}

bool isNotEmpty(String s) {
  return !isEmpty(s);
}

bool isBlank(String s) {
  return isEmpty(s) || s.length == 0;
}

bool isNotBlank(String s) {
  return !isBlank(s);
}

bool isSpace(String s) {
  return  isNotBlank(s) && (s == ' ' || s == '\t');
}

bool isNotSpace(String s) {
  return !isSpace(s);
}