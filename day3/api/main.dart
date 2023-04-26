import 'dart:convert';
import 'dart:io';

void main() async {
  final String endPoint = "https://catfact.ninja/fact";

  HttpClient()
      .getUrl(Uri.parse(endPoint))
      .then((HttpClientRequest request) => request.close())
      .then((HttpClientResponse response) {
    if (response.statusCode == HttpStatus.ok) {
      // Request successful, parse the JSON response
      response.transform(utf8.decoder).listen((responseData) {
        print(json.decode(responseData)["fact"]);
      });
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}.');
    }
  });
}
