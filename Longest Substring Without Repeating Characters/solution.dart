class SpeedSolution {
  int lengthOfLongestSubstring(String s) {
    int n = s.length;
    if (n <= 1) {
      return n;
    }
    int max = 1;

    int i = 0;
    for (int c = 1; c < n; c++) {
      int subIndex = s.substring(i, c).indexOf(s[c]);
      if (subIndex != -1) {
        i += subIndex + 1;
      }
      if (max < c - i + 1) {
        max = c - i + 1;
      }
    }
    return max;
  }
}

class BalanceSolution {
  int lengthOfLongestSubstring(String s) {
    int n = s.length;
    if (n <= 1) return n;
    List<String> chars = [s[0]];
    int maxLength = 1;

    for (int i = 1; i < n; i++) {
      String currentChar = s[i];
      if (chars.contains(currentChar)) {
        int indexToRemove = chars.indexOf(currentChar);
        chars.removeRange(0, indexToRemove + 1);
      }
      chars.add(currentChar);
      maxLength = maxLength > chars.length ? maxLength : chars.length;
    }
    return maxLength;
  }
}
