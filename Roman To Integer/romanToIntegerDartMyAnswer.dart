class Solution {
  int romanToInt(String s) {
    int result = 0;

    while(s.length >= 1){
      if(s.length >= 2){
        String temp = s.substring(0,2);
        s = s.substring(2);
        if(isValidSymbols(temp)){
          result += symbolsToNum(temp);
        }else{
          result += symbolToNum(temp[0]);
          s = temp[1] + s;
        }
      } else if(s.length == 1){
        String temp = s.substring(0,1);
        result += symbolToNum(temp);
        s = s.substring(1);
      }
    }

    return result;
  }

  int symbolToNum(String symbol){
    switch(symbol){
      case "I":
        return 1;
      case "V":
        return 5;
      case "X":
        return 10;
      case "L":
        return 50;
      case "C":
        return 100;
      case "D":
        return 500;
      case "M":
        return 1000;
      default:
        return 0;
    }
  }

  int symbolsToNum(String symbols){
    switch(symbols){
      case "IV":
        return 4;
      case "IX":
        return 9;
      case "XL":
        return 40;
      case "XC":
        return 90;
      case "CD":
        return 400;
      case "CM":
        return 900;
      default:
        return 0;
    }
  }

  bool isValidSymbols(String symbols){
    return (symbols == "IV") || (symbols == "IX") || (symbols == "XL")|| (symbols == "XC")||(symbols == "CD") || (symbols == "CM");
  }
}