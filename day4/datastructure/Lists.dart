class ListsImpplementation {
  final List<dynamic> names;

  ListsImpplementation(this.names);

  addName(String name) => names.add(name);

  updateName(int index, String name) => names.insert(index, name);

  printAllNames() => names.forEach(print);

  deleteName(int index) {
    if (index <= names.length) {
      print("The ${names.removeAt(index)} is successfully deleted");
    } else {
      print(
          "Cannot remove $index position because the length of the list is ${names.length} only");
    }
  }
}
