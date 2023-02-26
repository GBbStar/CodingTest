Convert Sorted Array to Binary Search Tree

Given an integer array nums where the elements are sorted in ascending order, convert it to a
height-balanced
binary search tree.

Example 1:

Input: nums = [-10,-3,0,5,9]
Output: [0,-3,9,-10,null,5]
Explanation: [0,-10,5,null,-3,null,9] is also accepted:

Example 2:

Input: nums = [1,3]
Output: [3,1]
Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.

Constraints:

1 <= nums.length <= 104
-104 <= nums[i] <= 104
nums is sorted in a strictly increasing order.

오름차순으로 이미 정렬된 배열을 가지고, 좌우 서브 트리 높이가 같은 이진트리 구현
루트를 기준으로 좌측은 작고, 우측은 커야 함

루트를 넣고, 좌(우) 남은 요소수를 판단
-> 홀수일 때
남은 요소수의 중간 인덱스를 가지고 재귀

-> 짝수일 때
쭉 왼쪽에 쌓거나 오른쪽에 쌓거나