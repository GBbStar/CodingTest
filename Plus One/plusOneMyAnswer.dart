class Solution {
  List<int> plusOne(List<int> digits) {
    List<int> result = [];
    String digitsToString = _listToString(digits);


    try{
      String addedDigitsToString = (BigInt.parse(digitsToString)+BigInt.from(1)).toString();
      for(int i=0; i < addedDigitsToString.length; i++){
        result.add(int.parse(addedDigitsToString[i]));
      }
    }catch(e){
      return digits;
    }

    return result;
  }

  String _listToString(List<int> digits){
    String result = "";
    for(int digit in digits){
      result += digit.toString();
    }

    return result;
  }

}