class Solution {
  String longestCommonPrefix(List<String> strs) {
    String commonPrefix = strs.first;
    for (final word in strs) {
      while (!word.startsWith(commonPrefix)) {
        commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
      }
    }
    return commonPrefix;
  }
}
