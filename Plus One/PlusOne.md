Plus One

You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

Example 1:

Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
Incrementing by one gives 123 + 1 = 124.
Thus, the result should be [1,2,4].
Example 2:

Input: digits = [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
Incrementing by one gives 4321 + 1 = 4322.
Thus, the result should be [4,3,2,2].
Example 3:

Input: digits = [9]
Output: [1,0]
Explanation: The array represents the integer 9.
Incrementing by one gives 9 + 1 = 10.
Thus, the result should be [1,0].

Constraints:

1 <= digits.length <= 100
0 <= digits[i] <= 9
digits does not contain any leading 0's.

접근 방식
1. List를 String으로 변환
2. String을 int로 변환
3. 변환한 값에 +1
4. 다시 String으로 변환
5. String의 한자리씩 int로 반환하며, List에 저장


이슈
String으로 변환한 값이 int로 parse 했을 때, 표현 범위보다 큰 케이스가 존재 
=> BigInt라는 int보다 큰 범위를 표현할 수 있는 자료형 사용

솔루션
list를 String으로 String을 int로 변화하는 과정없이, list에서 조건에 따라 가공하는 방식
=> 시간은 별차이 없지만, Exception 가능성이나 가독성 측면에서 더 나아보임
