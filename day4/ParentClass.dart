import "dart:io";

class Parent {
  createHTTPRequest() {
    HttpServer.bind("127.0.0.1", 4444)
        .then((value) => print("${value.isBroadcast}"))
        .catchError(print);
  }
}
