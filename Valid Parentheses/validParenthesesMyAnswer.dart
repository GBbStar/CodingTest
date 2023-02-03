class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for(int index = 0; index < s.length; index++){
      if(isOpenBrackets(s[index])){
        stack.add(s[index]);
      } else{
        if(stack.isEmpty) {
          return false;
        } else {
          if(isMatchBrackets(stack.last, s[index])){
            stack.removeLast();
          }else{
            return false;
          }
        }
      }
    }

    return stack.isEmpty;
  }

  bool isOpenBrackets(String c){
    return (c == "(" || c == "[" || c=="{");
  }

  bool isMatchBrackets(String openBrackets, String closeBrackets){
    switch(openBrackets){
      case "(":
        return closeBrackets == ")";
      case "[":
        return closeBrackets == "]";
      case "{":
        return closeBrackets == "}";
      default:
        return false;
    }
  }
}