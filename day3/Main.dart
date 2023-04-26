import 'CLassOne.dart';

void main(List<String> args) {
  final class1 = ClassOne();
  print(class1.getStep(100));

  class1
      .helloWorld()
      .then((value) => print("Successfully fetched: $value"))
      .catchError((e) => print("Successfully error: $e"));
}
