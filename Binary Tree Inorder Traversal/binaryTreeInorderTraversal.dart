class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result =[];
    List<TreeNode> leftNodeStack =[];

    TreeNode? currentNode = root;

    while(currentNode != null || leftNodeStack.isNotEmpty) {
      while(currentNode != null){
        leftNodeStack.add(currentNode);
        currentNode = currentNode.left;
      }
      currentNode = leftNodeStack.removeLast();
      result.add(currentNode.val);
      currentNode=currentNode.right;

    }
    return result;
  }
}