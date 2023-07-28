class Solution {
 
  double findMedianSortedArrays(List<int> list1, List<int> list2) {
  int list1Index = 0;
  int list2Index = 0;
  List mergedList = [];
  while (list1Index < list1.length && list2Index < list2.length) {
    if (list1[list1Index] < list2[list2Index]) {
      mergedList.add(list1[list1Index]);
      list1Index++;
    } else {
      mergedList.add(list2[list2Index]);
      list2Index++;
    }
  }
  while (list1Index < list1.length) {
    mergedList.add(list1[list1Index]);
    list1Index++;
  }
  while (list2Index < list2.length) {
    mergedList.add(list2[list2Index]);
    list2Index++;
  }

  int medianIndex = (mergedList.length - 1) ~/ 2;
  if (mergedList.length % 2 == 0) {
    return double.parse(((mergedList[medianIndex] + mergedList[medianIndex + 1]) / 2).toString());
  } else {
    return double.parse(mergedList[medianIndex].toString());
  }

}
}