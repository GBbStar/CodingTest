class Solution {
  TreeNode? recursive(int leftIndex, int rightIndex, List<int> nums){
    if(leftIndex > rightIndex){
      return null;
    }
    int middleIndex = ((leftIndex+rightIndex)/2).round();
    TreeNode bst = TreeNode(nums[middleIndex]);
    bst.right = recursive(middleIndex+1, rightIndex, nums);
    bst.left = recursive(leftIndex, middleIndex-1, nums);

    return bst;
  }

  TreeNode? sortedArrayToBST(List<int> nums) {
    return recursive(0, nums.length-1, nums);
  }
}