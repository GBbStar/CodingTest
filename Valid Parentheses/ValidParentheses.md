Valid Parentheses

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.


Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false


Constraints:

1 <= s.length <= 104
s consists of parentheses only '()[]{}'.

문제 파악

괄호가 중복되어도 닫혀지만 하면 되나?
x > 가장 최근의 괄호가 닫아져야 함

접근 방식 1.  
1. s를 순환하며, ( [ { 인지 체크한다. 
2-1. 참 => 스택에 넣어둔다
2-2. 거짓
2-2-1. 스택이 비어있을 경우 => false 리턴
2-2-2. 스택이 하나라도 있을 경우
2-2-2-1. 스택에 마지막 요소와 쌍을 이루는 요소인 경우 => 마지막 요소를 제거
2-2-2-2. 스택에 마지막 요소와 상관 없을 경우 => false 리턴
2. stack에 요소가 없으면 true, 아니면 false

솔루션
'''
public boolean isValid(String s) {
Stack<Character> stack = new Stack<Character>();
for (char c : s.toCharArray()) {
if (c == '(')
stack.push(')');
else if (c == '{')
stack.push('}');
else if (c == '[')
stack.push(']');
else if (stack.isEmpty() || stack.pop() != c)
return false;
}
return stack.isEmpty();
}
'''

분석
처음 오픈 브로캣인지 체크하고, 스택에 넣는 동작은 같음
그러나 쌍을 이루는지 체크하는 로직이, 팝을 동반하기에 해당 동작여부에 차이가 있을 듯함