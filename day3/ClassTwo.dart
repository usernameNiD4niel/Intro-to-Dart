import 'Class3.dart';

class Class2 implements Class3 {
  int age = 78;

  Class2() {
    print("Class 2 constructor invoked");
  }

  @override
  setAge(int age) {
    this.age = age;
  }

  @override
  int getAge() {
    return 5;
  }

  int getStep(int step) => step;
}
