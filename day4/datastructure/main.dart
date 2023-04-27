import 'dart:collection';

import 'Lists.dart';
import 'Maps.dart';
import 'Queues.dart';
import 'Sets.dart';

void main(List<String> args) {
  var set = SetsImplementation({"apple", "banana", "mango"});
  set.insertFruit(fruit: "batag");
  set.printAllFruits();
  set.deleteFruit("banana");
  set.printAllFruits();
  print("---------------------------------------------------");
  set.printAllFruitsUsingWhere();
  print("---------------------------------------------------");
  print("---------------------------------------------------");
  print("----------------------LIST-------------------------");
  var list = ListsImpplementation(["Daniel", "Rey", "Chona", "Mae", "Zamudio"]);
  list.printAllNames();
  print("---------------------------------------------------");
  list.addName("Daniel");
  list.printAllNames();
  print("---------------------------------------------------");
  list.updateName(2, "Sira");
  list.printAllNames();
  print("---------------------------------------------------");
  list.deleteName(1);
  list.printAllNames();
  print("---------------------------------------------------");

  print("---------------------------------------------------");
  print("---------------------------------------------------");
  print("----------------------MAP--------------------------");
  var map = MapImplementation(
      userInfo: {"first name": "daniel", "last name": "rey", "age": 22});
  map.addUserInfo("gender", "male");
  map.addUserInfo("catholic", true);
  map.printAllUserInfoValue();
  print("---------------------------------------------------");
  map.printAllUserInfoValue();
  print("---------------------------------------------------");
  map.printSelectedValue("last name");
  print("---------------------------------------------------");
  map.printAllExcept("rey1");
  print("---------------------------------------------------");
  map.updateUserInfo("gender", "tama");
  map.printAllUserInfoValue();
  print("---------------------------------------------------");
  map.updateUserInfoWithIfAbsent("genderss", "malesss");
  map.printAllUserInfoValue();
  print("---------------------------------------------------");
  print("---------------------------------------------------");
  print("--------------------QUEUES-------------------------");
  Queue<String> queue = Queue();
  queue.add("history");
  queue.add("science");
  var books = QueuesImplementation(queue: queue);
  books.addBook("math");
  books.printAllBooks();
  print("---------------------------------------------------");
  books.addAllBooks({"book 1", "book 2"});
  books.printAllBooks();
  print("---------------------------------------------------");
}
