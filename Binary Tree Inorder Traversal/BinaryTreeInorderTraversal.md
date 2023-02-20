Binary Tree Inorder Traversal

Given the root of a binary tree, return the inorder traversal of its nodes' values.

Example 1:

Input: root = [1,null,2,3]
Output: [1,3,2]
Example 2:

Input: root = []
Output: []
Example 3:

Input: root = [1]
Output: [1]

Constraints:

The number of nodes in the tree is in the range [0, 100].
-100 <= Node.val <= 100


# Tree 정의

- 1개 이상의 유한한 개수의 노드(or vertex)의 집합
- 루트 노드와 0개 이상의 겹치지 않는(disjoint) 하위 나무 구조들의 집합으로 이루어짐

# 이진 나무 순회(Tree Traverse)
- 전위 순회(preorder traverse)
  - 뿌리(root)를 먼저 방문
  - 뿌리->왼쪽 자식->오른쪽 자식 순
- 중위 순회(inorder traverse)
  - 왼쪽 하위 트리를 방문 후 뿌리(root)를 방문
  - 왼쪽자식-> 뿌리-> 오른쪽 자식
- 후위 순회(postorder traverse)
  - 하위 트리 모두 방문 후 뿌리(root)를 방문
  - 왼쪽자식->오른쪽 자식-> 뿌리
- 층별 순회(level order traverse)
  - 위 쪽 node들 부터 아래방향으로 차례로 방문
  - 그냥 노드의 순서대로


