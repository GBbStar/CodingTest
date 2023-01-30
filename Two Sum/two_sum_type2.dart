class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map temp = nums.asMap();
    for(int i = 0; i <nums.length; i++){
      int otherNum = target - nums[i];
      if(temp.containsValue(otherNum) && temp.keys.firstWhere((k) => temp[k] == otherNum)!=i){
        int otherNumIndex = temp.keys.firstWhere((k) => temp[k] == otherNum);
        return [i, otherNumIndex];
      }
    }
    return [];
  }
}