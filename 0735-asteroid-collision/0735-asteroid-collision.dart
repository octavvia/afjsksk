class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    final int n = asteroids.length;
    int j = 0;

    for (int i = 0; i < n; i++) {
      final int asteroid = asteroids[i];
      while (j > 0 &&
          asteroids[j - 1] > 0 &&
          asteroid < 0 &&
          asteroids[j - 1] < asteroid.abs()) {
        j--;
      }

      if (j == 0 || asteroid > 0 || asteroids[j - 1] < 0) {
        asteroids[j++] = asteroid;
      } else if (asteroids[j - 1] == asteroid.abs()) {
        j--;
      }
    }

    final List<int> result = List<int>.from(asteroids.sublist(0, j));
    return result;
  }
}