/// Author: Yohan Beschi

import 'dart:isolate';

/**
 * Entry Point 
 */
void main() {
  final List<String> list = new List();
  list.add('variables/variables.dart');
  list.add('types/strings.dart');
  list.add('types/numbers.dart');
  list.add('types/booleans.dart');
  list.add('types/lists.dart');
  list.add('types/maps.dart');
  list.add('operators/arithmetic_operators.dart');
  list.add('operators/equality_relational_operators.dart');
  list.add('operators/type_test_operators.dart');
  list.add('operators/logical_operators.dart');
  list.add('operators/bitwise_shift_operators.dart');
  list.add('operators/assignment_operators.dart');
  list.add('loops/for_loops.dart');
  list.add('loops/forin_loops.dart');
  list.add('loops/foreach_loops.dart');
  list.add('loops/while_loops.dart');
  list.add('loops/dowhile_loops.dart');
  list.add('conditions/ifelse_conditions.dart');
  list.add('conditions/switch_conditions.dart');
  list.add('conditions/continue_switch.dart');
  list.add('functions/top_level_functions.dart');
  list.add('functions/anonymous_functions.dart');
  list.add('functions/standard_local_functions.dart');
  list.add('functions/shorthand_functions.dart');
  list.add('functions/closures_functions.dart');
  list.add('functions/top_level_functions.dart');
  list.add('functions/typedef_functions.dart');
  list.add('functions/optional_positional_parameters.dart');
  list.add('functions/optional_named_parameters.dart');
  list.add('functions/optional_typing_functions.dart');
  list.add('functions/wrapup1_functions.dart');
  list.add('functions/wrapup2_functions.dart');
  list.add('functions/wrapup3_functions.dart');
  list.add('oop/abstract_classes.dart');
  list.add('oop/abstract_classes_inheritance.dart');
  list.add('oop/caching_factory.dart');
  list.add('oop/cascade.dart');
  list.add('oop/const.dart');
  list.add('oop/constructor_inheritance.dart');
  list.add('oop/default_impl_factory.dart');
  list.add('oop/defining_noSuchMethod.dart');
  list.add('oop/egality_overriding.dart');
  list.add('oop/enumerations.dart');
  list.add('oop/exceptions.dart');
  list.add('oop/final.dart');
  list.add('oop/generics.dart');
  list.add('oop/instance_inheritance.dart');
  list.add('oop/instance_methods.dart');
  list.add('oop/intro_noSuchMethod.dart');
  list.add('oop/invokeOn_noSuchMethod.dart');
  list.add('oop/methods_overriding.dart');
  list.add('oop/mixed_constructor.dart');
  list.add('oop/mixins.dart');
  list.add('oop/mock_interfaces.dart');
  list.add('oop/named_constructor.dart');
  list.add('oop/operators_overriding.dart');
  list.add('oop/optional_parameters_constructor.dart');
  list.add('oop/pre_constructor.dart');
  list.add('oop/simple_class.dart');
  list.add('oop/simple_constructor.dart');
  list.add('oop/simple_interfaces.dart');
  list.add('oop/static_fields.dart');
  list.add('oop/static_inheritance.dart');
  list.add('oop/static_methods.dart');
  list.add('oop/static_none_static.dart');
  list.add('oop/sugar_constructor.dart');
  list.add('libraries/imports.dart');
  list.add('libraries/aliases.dart');
  list.add('libraries/simple_library/uses_simple_library.dart');
  list.add('libraries/privacy/uses_privacy_library.dart');
  list.add('libraries/multi/app/uses_multifiles_lib.dart');
  list.add('libraries/reexport/using_partial_lib.dart');
  list.add('libraries/getset/uses_getset_library.dart');

  for (String file in list) {
    spawnUri(file);
  }
}
