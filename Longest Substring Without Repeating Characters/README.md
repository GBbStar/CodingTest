# Longest Substring Without Repeating Characters

Given a string s, find the length of the longest substring without repeating characters.


Example 1:
> Input: s = "abcabcbb"
>
> Output: 3
>
> Explanation: The answer is "abc", with the length of 3.

Example 2:
> Input: s = "bbbbb"
>
> Output: 1
>
> Explanation: The answer is "b", with the length of 1.

Example 3:
> Input: s = "pwwkew"
>
> Output: 3
>
> Explanation: The answer is "wke", with the length of 3.
>
> Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

<br/> 
   
Constraints:

0 <= s.length <= 5 * 104
s consists of English letters, digits, symbols and spaces.


<hr/>

<br/> <br/> 

'''
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
'''

<br/> 

'''
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
'''

