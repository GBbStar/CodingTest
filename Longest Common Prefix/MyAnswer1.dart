class Solution {
  String longestCommonPrefix(List<String> strs) {
    Map<int, List<String>> sortedStringsByLength= {};
    String result = "";
    for(String str in strs){
      if(sortedStringsByLength.containsKey(str.length)){
        List<String> temp = sortedStringsByLength[str.length]!;
        temp.add(str);
        sortedStringsByLength[str.length] = temp;
      }
      else{
        sortedStringsByLength[str.length] = [str];
      }
    }

    for(int length in sortedStringsByLength.keys){
      if(length==0){
        return "";
      }
      else if(length == 1){
        if(sortedStringsByLength[length]!.toSet().length != 1){
          return "";
        }
        else{
          if(strs.where((e) => !e.contains(sortedStringsByLength[length]!.first)).isEmpty == false){
            return "";
          }
          return sortedStringsByLength[length]!.first;
        }
      }
      else{
        String temp = sortedStringsByLength[length]!.first.substring(0,1);
        for(int i=0; i<sortedStringsByLength[length]!.first.substring(1).length; i++) {
          String char = sortedStringsByLength[length]!.first.substring(1)![i];
          if(sortedStringsByLength[length]!.where((e) => !e.startsWith(temp)).isEmpty){
            temp += char;
          }
          else{
            return "";
          }
        }

        if(strs.where((e) => !e.startsWith(temp)).isEmpty == false){
          return "";
        }
        else{return temp;}
      }
    }

    return result;
  }
}