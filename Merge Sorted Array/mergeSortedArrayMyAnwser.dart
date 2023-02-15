class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> temp = nums1.sublist(0,m) + nums2.sublist(0,n);
    temp.sort();
    for(int index = 0; index<nums1.length ; index++){
      nums1[index] = temp[index];
    }
  }
}