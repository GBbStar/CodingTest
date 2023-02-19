class Solution {
  List<String> fizzBuzz(int n) {
    List<String> result = [];
    for (int index=1; index <= n; index++){
      if(isDivisible15(index)){
        result.add("FizzBuzz");
      } else if(isDivisible5(index)){
        result.add("Buzz");
      } else if(isDivisible3(index)){
        result.add("Fizz");
      } else{
        result.add(index.toString());
      }
    }

    return result;
  }

  bool isDivisible3(int number){
    return number % 3 == 0;
  }

  bool isDivisible5(int number){
    return number % 5 == 0;
  }

  bool isDivisible15(int number){
    return number % 15 == 0;
  }
}