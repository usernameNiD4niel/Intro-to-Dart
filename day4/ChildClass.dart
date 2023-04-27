import 'Dump.dart';
import 'Mixins.dart';
import 'ParentClass.dart';

class Child extends Parent with Swimmer {
  @override
  swim() {
    print("Swimming $thenX");
  }

  int get thenX => 10;

  String createNewPerson(Person person) =>
      "${person.getFirstName()} ${person.getLastName()}";
}
