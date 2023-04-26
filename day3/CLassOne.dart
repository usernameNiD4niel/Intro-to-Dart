import 'ClassTwo.dart';

class ClassOne extends Class2 {
  ClassOne() {
    print("Class one constructor invoked");
  }

  @override
  getStep(int step) => step;

  Future<String> helloWorld() async {
    String response =
        await Future.delayed(Duration(seconds: 2), () => "Daniel Rey");
    return response;
  }
}
