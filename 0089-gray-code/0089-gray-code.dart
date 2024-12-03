class Solution {
  List<int> grayCode(int n) {
    List<int> result = [];
    final list = generateGrayCode(n);
    for (var item in list) {
      result.add(int.parse(item, radix: 2));
    }
    return result;
  }

  List<String> generateGrayCode(int n) {
    List<String> list1 = [];
    List<String> list2 = [];
    if (n == 1) return ['0', '1'];
    final list = generateGrayCode(n - 1);
    for (int i = 0; i < list.length; i++) {
      list1.add('0${list[i]}');
    }
    for (int i = list.length - 1; i >= 0; i--) {
      list1.add('1${list[i]}');
    }
    list1.addAll(list2);
    return list1;
  }
}