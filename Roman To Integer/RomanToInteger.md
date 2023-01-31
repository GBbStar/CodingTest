Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

I can be placed before V (5) and X (10) to make 4 and 9. 
X can be placed before L (50) and C (100) to make 40 and 90. 
C can be placed before D (500) and M (1000) to make 400 and 900.
Given a roman numeral, convert it to an integer.

Example 1:

Input: s = "III"
Output: 3
Explanation: III = 3.
Example 2:

Input: s = "LVIII"
Output: 58
Explanation: L = 50, V= 5, III = 3.
Example 3:

Input: s = "MCMXCIV"
Output: 1994
Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 

Constraints:

1 <= s.length <= 15
s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
It is guaranteed that s is a valid roman numeral in the range [1, 3999].


문제파악

개별적인 요소들을 각자 상징하는 값이 존재
특정 요소는 뒤에 또 다른 특정 요소가 올 경우, 함께 묶여 상징하는 값이 변경
접근 방식 1.
0. 각 요소가 상징하는 값을 매핑하는 메서드와 2개의 요소가 상징하는 값을 매핑하는 메소드를 작성

처음 앞에서부터 2개의 값을 가져온다(2개 이상일 때 / 1개 일땐 바로 값을 가져와서 더해주고 / 더 이상 있지 않다면 종료)
가져온 2개의 값 중, 첫번째 요소가 I. X, C이고 두번쨰 요소가 V(X), L(C), D(M)을 체크한다
2-1. 참인 경우
상징하는 값을 변수에 더해주고, 다음 2개의 요소를 가져온다
2-2. 거짓인 경우
첫번째 요소가 상징하는 값만 변수에 더해주고, 다음 값을 가져온다

+ 더 생각해볼 부분
temp에 맨 앞 요소를 유지하고, 후에 하나씩 꺼내오는 방식으로도 구현할 수 있을 듯하다
이렇게 진행하면, 전체 문자열을 뺐다 넣어주는 동작은 없어지게 된다.(단순 비교만 하고 끝)


Best Practice
def romanToInt(self, s: str) -> int:
        translations = {
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        }
        number = 0
        s = s.replace("IV", "IIII").replace("IX", "VIIII")
        s = s.replace("XL", "XXXX").replace("XC", "LXXXX")
        s = s.replace("CD", "CCCC").replace("CM", "DCCCC")
        for char in s:
            number += translations[char]
        return number
값을 구하는 로직은 유지하되, 모든 요소가 같은 룰을 적용할 수 있도록 아예 변환시켜버리는 방식으로 구현