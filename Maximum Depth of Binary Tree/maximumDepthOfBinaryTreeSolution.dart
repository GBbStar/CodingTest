class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    int rightDepth = maxDepth(root.right);
    int leftDepth = maxDepth(root.left);

    return rightDepth > leftDepth ? rightDepth+1 : leftDepth+1 ;
  }
}