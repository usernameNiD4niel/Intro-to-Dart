void main(List<String> args) {
  pragma("dart2js:optimize=2");

  String fullName = "Daniel Rey ay poging maray talaga";

  void printLine() {
    print("==================================================================");
  }

  print("To Lower Case: ${fullName.toLowerCase()}");
  printLine();

  print("To Upper Case: ${fullName.toUpperCase()}");
  printLine();

  print("Contains y: ${fullName.contains("y")}");
  printLine();

  print("Index of C: ${fullName.indexOf("y")}");
  printLine();

  print("Code Unit At 0: ${fullName.codeUnitAt(0)}");
  printLine();

  var regularExp = RegExp(r'Dan');
  print("Match as Prefix Dan: ${regularExp.matchAsPrefix(fullName, 0)}");
  printLine();

  print(
      "Compare to ey: ${fullName.compareTo("Daniel Rey ay poging maray talaga")}");
  printLine();

  print("Access string by index: ${fullName[0]}");
  printLine();

  fullName.split(" ").forEach(print);
  printLine();

  List<String> newList = fullName.split(" ").map((e) => "${e}-${e}").toList();
  printLine();
  newList.forEach(print);

  Iterator<String> iterator = newList.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
  printLine();
}
