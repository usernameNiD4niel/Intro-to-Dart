class InvertValues {
  static List<int> invert(List<int> arr) {
    List<int> newMap = [];
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] < 0) {
        newMap.add(arr[i].abs());
      } else {
        newMap.add(-arr[i]);
      }
    }
    return newMap;
  }

  static List<int> bestPractices(List<int> arr) => arr.map((e) => -e).toList();
}
