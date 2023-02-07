import "dart:collection";

class Solution {
  int removeDuplicates(List<int> nums) {

    final List<int> numsNotDuplicated = nums.toSet().toList();
    for(int i=0; i < numsNotDuplicated.length; i++){
      nums[i] = numsNotDuplicated[i];
    }

    return numsNotDuplicated.length;
  }
}