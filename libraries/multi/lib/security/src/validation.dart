part of security;

abstract class Validatable {
  List<Object> valuesToValidate();
}

class Validator<T extends Validatable> {
  bool validate(T object) {
    for (Object obj in object.valuesToValidate()) {
      if (isEmpty(obj.toString())) {
        return false;
      }
    }
    
    return true;
  }
}