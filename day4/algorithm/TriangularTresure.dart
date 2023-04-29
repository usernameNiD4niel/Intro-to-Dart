class TriangularTresure {
  static int triangular(n) {
    if (n < 0) {
      return 0;
    }

    int counter = n;

    for (int i = 1; i < n; i++) {
      int initial = n - i;
      counter += initial;
    }

    return counter;
  }

  static int optimizedWay(n) => n < 0 ? 0 : ((n + 1) / 2 * n).floor();
}
