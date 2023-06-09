void main() {
  bool binarySearch(List<int> sortedNumber, int peek) {
    int high = sortedNumber.length;
    int low = 0;
    do {
      int mid = (low + (high - low) / 2).floor();
      int midValue = sortedNumber[mid];

      if (peek == midValue) {
        return true;
      } else if (peek > midValue) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    } while (low < high);

    return false;
  }

  int fibonacciSequence(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacciSequence(n - 1) + fibonacciSequence(n - 2);
  }

  print(fibonacciSequence(5));

  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17], 17));
}
