// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

// Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
// Example 2:

// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// Example 3:

// Input: nums = [3,3], target = 6
// Output: [0,1]


// Constraints:

// 2 <= nums.length <= 104
// -109 <= nums[i] <= 109
// -109 <= target <= 109
// Only one valid answer exists.


// Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // 조건 파악하기
    // nums
    // 음수, 0, 양수, 중복 다 올 수 있음
    //

    // 접근 방식 1
    // 1. asMap으로 인덱스와 값을 매핑
    // 2. map을 돌면서 해당 아이템을 제외한 남은 값들과 더해서 타켓과 비교
    // 3. 같으면 결과에 담고 반환 / 다르다면 마지막 요소까지 진행
    // 4. 마지막 요소 후 해당 인덱스 값 제거
    // 5. 반복

    // 접근 방식 2
    // 1. list가 비어있지 않다면, nums에서 맨 앞 요소를 제거하고 제거한 요소를 i(1)로 잡음
    // 2. i와 제거된 nums를 순환하면서, 더해서 만족하는지 체크
    // 3. 만약 순환이 끝났다면, 또 맨앞에 요소를 제거하고 i(2)로 잡음, 이때 인덱스 스택 j를 하나 올림
    // 4. 만약 돌다가 찾는다면,[ j, j+찾은 자리의 인덱스 리턴]
    // 5. 해당 과정은 remove가 가능할때까지만

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


/* 정답

Approach 1: Brute Force
Algorithm

The brute force approach is simple. Loop through each element xxx and find if there is another value that equals to target−xtarget - xtarget−x.

Complexity Analysis

Time complexity: O(n^2)
For each element, we try to find its complement by looping through the rest of the array which takes O(n) time.
Therefore, the time complexity is O(n2).

Space complexity: O(1)

The space required does not depend on the size of the input array, so only constant space is used.

class Solution {
    public int[] twoSum(int[] nums, int target) {
        for (int i = 0; i < nums.length; i++) {
            for (int j = i + 1; j < nums.length; j++) {
                if (nums[j] == target - nums[i]) {
                    return new int[] { i, j };
                }
            }
        }
        // In case there is no solution, we'll just return null
        return null;
    }
}

Approach 2: Two-pass Hash Table
Intuition

To improve our runtime complexity, we need a more efficient way to check if the complement exists in the array. If the complement exists, we need to get its index. What is the best way to maintain a mapping of each element in the array to its index? A hash table.

We can reduce the lookup time from O(n) to O(1) by trading space for speed. A hash table is well suited for this purpose because it supports fast lookup in near constant time. I say "near" because if a collision occurred, a lookup could degenerate to O(n) time. However, lookup in a hash table should be amortized O(1) time as long as the hash function was chosen carefully.

Algorithm

A simple implementation uses two iterations. In the first iteration, we add each element's value as a key and its index as a value to the hash table. Then, in the second iteration, we check if each element's complement (target−nums[i]) exists in the hash table. If it does exist, we return current element's index and its complement's index. Beware that the complement must not be nums[i] itself!

Complexity Analysis

Time complexity: O(n). We traverse the list containing nnn elements exactly twice. Since the hash table reduces the lookup time to O(1)O(1)O(1), the overall time complexity is O(n).

Space complexity: O(n). The extra space required depends on the number of items stored in the hash table, which stores exactly nnn elements.

class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            map.put(nums[i], i);
        }
        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i];
            if (map.containsKey(complement) && map.get(complement) != i) {
                return new int[] { i, map.get(complement) };
            }
        }
        // In case there is no solution, we'll just return null
        return null;
    }
}

Approach 3: One-pass Hash Table
Algorithm

It turns out we can do it in one-pass. While we are iterating and inserting elements into the hash table, we also look back to check if current element's complement already exists in the hash table. If it exists, we have found a solution and return the indices immediately

Complexity Analysis

Time complexity: O(n). We traverse the list containing nnn elements only once. Each lookup in the table costs only O(1) time.

Space complexity: O(n). The extra space required depends on the number of items stored in the hash table, which stores at most nnn elements.


 class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i];
            if (map.containsKey(complement)) {
                return new int[] { map.get(complement), i };
            }
            map.put(nums[i], i);
        }
        // In case there is no solution, we'll just return null
        return null;
    }
}
 */