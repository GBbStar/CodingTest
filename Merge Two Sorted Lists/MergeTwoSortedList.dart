class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? list1Item=list1;
    ListNode? list2Item=list2;
    ListNode? headerNodePoint = ListNode(-1);
    // 얕은 복사(주소 공유)
    // temp를 수정하면, dummy도 같이 수정됨
    ListNode? tailNodePoint = headerNodePoint;


    while(list1Item!=null && list2Item!=null){
      if(list1Item.val < list2Item.val){
        tailNodePoint?.next = list1Item;
        list1Item = list1Item.next;
      }else{
        tailNodePoint?.next = list2Item;
        list2Item = list2Item.next;
      }
      tailNodePoint = tailNodePoint?.next;
    }
    while(list1Item!=null){
      tailNodePoint?.next = list1Item;
      list1Item = list1Item.next;
      tailNodePoint = tailNodePoint?.next;
    }
    while(list2Item!=null){
      tailNodePoint?.next = list2Item;
      list2Item = list2Item.next;
      tailNodePoint = tailNodePoint?.next;
    }

    return headerNodePoint.next;

  }

}