import 'dart:collection';

class QueuesImplementation {
  final Queue<String> queue;

  QueuesImplementation({required this.queue});

  addBook(String book) => queue.add(book);

  printAllBooks() => queue.forEach(print);

  addAllBooks(Iterable<String> books) => queue.addAll(books);
}
