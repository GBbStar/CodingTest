Sqrt(X)

Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

You must not use any built-in exponent function or operator.

For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

Example 1:

Input: x = 4
Output: 2
Explanation: The square root of 4 is 2, so we return 2.
Example 2:

Input: x = 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.

Constraints:

0 <= x <= 231 - 1

접근 방식
math에서 제공해주는, sqrt & floor를 이용

O(lg(n))의 솔루션을 따라 구현해봤지만, 속도에서 별 차이가 없어 가독성 측면에서 해당 코드가 더 유리하다 판단했음

