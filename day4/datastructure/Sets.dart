class SetsImplementation {
  final Set<String> fruits;

  SetsImplementation(this.fruits);

  insertFruit({required String fruit}) {
    fruits.add(fruit);
  }

  printAllFruits() => fruits.forEach(print);

  printAllFruitsUsingWhere() =>
      fruits.where((element) => element.startsWith("a")).forEach(print);

  deleteFruit(String fruitToDelete) {
    print("---------------------------------------------------");
    if (fruits.remove(fruitToDelete)) {
      print("Element $fruitToDelete successfully deleted");
    } else {
      print("The element $fruitToDelete is not in the set");
    }
    print("---------------------------------------------------");
  }
}
