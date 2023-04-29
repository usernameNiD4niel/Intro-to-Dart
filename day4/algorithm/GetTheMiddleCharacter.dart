class GetTheMiddleCharacter {
  static String getMiddle(String s) {
    //Code goes here!
    if (s.length == 1 && s.length == 2) {
      return s;
    }

    int mid = (s.length / 2).floor();

    if (s.length % 2 == 0) {
      return "${s[mid - 1]}${s[mid]}";
    } else {
      return s[mid];
    }
  }
}
