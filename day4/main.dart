import 'ChildClass.dart';
import 'Dump.dart';

void main(List<String> args) {
  var chilClass = Child();
  chilClass.swim();
  chilClass.run();
  print(chilClass.thenX);
  print(chilClass.createNewPerson(Person("Daniel", "Rey")));
  // chilClass.createHTTPRequest();
}
