Longest Common Prefix

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".



Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.


Constraints:

1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters.

문제파악
- prefix는 2개 이상 있을 수 있는가?
  X(있다면 앞에 위치하는 것으로)
- prefix는 문자열 중간에 위치할 수 있는가?
  X

접근 방식 1번
1. 배열에서 길이를 기준으로, Map에 길이와 함께 재정렬
2. Map의 키를 순환하면서, 존재하는 길이(Map의 키) 중 가장 작은 길이의 모든 값들이 같은지 비교
   2-1. 참(같음)
   다음으로 작은 길이의 값들을 대상으로, 앞에 가장 작은 길이의 값을 contain하는지 비교
   2-2. 거짓(같지 않음)
   공통된 부분 없음

1번 로직 오류
가장 작은 길이의 문자열 전체가 prefix가 아닐 수 있음(가장 작인 길이의 문자열 중 일부가 prefix일 수 있음)

접근 방식 2번
1. 배열에서 길이를 기준으로, Map에 길이와 함께 재정렬
2. Map의 키를 순환하면서, 존재하는 길이(Map의 키) 중 가장 작은 길이를 가진 문자열간 비교
   2-0. 0자리일 때
   없음
   2-1. 1자리일 때
   모든 값들이 같은지 비교
   2-1-1. 같음
   해당 값을 모든 요소가 포함하는지 확인
   포함 -> 해당 요소 반환
   불포함 -> 없음
   2-1-2. 다름
   없음
   2-2. 2자리 이상일 때, 첫번째(상관 없음) 값의 각 자리의 문자를 순환하면서 해당 길이의 값들이 모두 가지는지 체크
   2-2-1. 가짐(참)
   다음 요소를 가지고 다시 반복
   2-2-2. 안가짐(거짓)
   없음
   반복된 요소가 있다면, 이 요소를 가지고 다른 길이의 값들도 가지는지 확인


솔루션
   단어들 중 하나를 commonPrefix라고 임의로 지정한다.
   모든 단어들마다 임의로 지정한 commonPrefix로 시작하는지 체크한다
      단어마다 체크하는 과정에서 commonPrefix로 시작하지 않는다면, 시작할 때까지 반복적으로 commonPrefix를 뒤에 한글자씩 뺀다
