class Solution {
  int climbStairs(int n) {
    int result = 1, nextNum = 1;
    while (n-->0){
      int temp = nextNum;
      nextNum = nextNum + result;
      result = temp;
    }
    return result;
  }
}