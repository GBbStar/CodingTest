class Solution {
  int beforeResult = 0;

  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    if(l1 == null) return l2;
    else if(l2 == null) return l1;

    BigInt l1Num = BigInt.parse(parseToString(l1));
    BigInt l2Num = BigInt.parse(parseToString(l2));

    final String result = (l1Num + l2Num).toString();

    return parseToListNode(result);
  }

  String parseToString(ListNode? node){
    String result = "";
    while(node != null){
      result = node.val.toString() + result;
      node = node.next;
    }
    return result;
  }

  ListNode parseToListNode(String numStr){
    List<ListNode> nodeList = [];

    for(String i in numStr.split('')){
      nodeList.insert(0, ListNode(int.parse(i)));
    }

    for (int i = 0; i< nodeList.length-1; i++){
      nodeList[i].next = nodeList[i+1];
    }

    return nodeList[0];
  }
}