You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

Merge nums1 and nums2 into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.



Example 1:

Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
Output: [1,2,2,3,5,6]
Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
Example 2:

Input: nums1 = [1], m = 1, nums2 = [], n = 0
Output: [1]
Explanation: The arrays we are merging are [1] and [].
The result of the merge is [1].
Example 3:

Input: nums1 = [0], m = 0, nums2 = [1], n = 1
Output: [1]
Explanation: The arrays we are merging are [] and [1].
The result of the merge is [1].
Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.


Constraints:

nums1.length == m + n
nums2.length == n
0 <= m, n <= 200
1 <= m + n <= 200
-109 <= nums1[i], nums2[j] <= 109


Follow up: Can you come up with an algorithm that runs in O(m + n) time?


접근방식 1.
1. num1에서 m개 만큼 리스트 슬라이스
2. num2에서 n개 만큼 리스트 슬라이스
3. 슬라이스한 두 리스트를 합침
4. 합친 리스트를 정렬

접근 방식 2.
1. m == 0 && n == 0 이면 [] 반환
2. m == 0 && n != 0 이면 num2[0:n] 반환
3. n == 0 && m != 0 이면 num1[0:m] 반환
4. indexA =0, indexB =0 부터 시작하여, 각각 m,n과 크지 않을때까지 진행한다
5. a 에는 nums1[indexA]를, b에는 nums2[indexB]를 담는다
6. a == b 이면, result에 a,b를 담고 indexA, indexB +1씩
   a > b 이면, result에 

1번 방식(MyAnswer) 장점
   가독성
   간단
1번 방식(MyAnswer) 단점
   메모리 사용도
   비교적 느린 속도
2번 방식(Solution) 장점
   압도적이진 않지만, 상대적으로 빠른 속도
   메모리 사용도
2번 방식(Solution) 단점
   가독성
