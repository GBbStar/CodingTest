class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int index = 0;

    while(nums.isNotEmpty){
      int temp = nums.removeAt(0);

      for(int num in nums){
        if((temp + num) == target){
          return [index, (index + nums.indexOf(num)+1)];
        }
      }
      index ++;
    }
    return [-1, -1];
  }
}
