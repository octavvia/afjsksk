class Solution {
  ListNode? partition(ListNode? head, int x) {
      final List<int> lessThan = [];
      final List<int> greaterThan = [];
      var temp = head;
      while (temp != null) {
          if (temp.val < x) {
              lessThan.add(temp.val);
          } else {
              greaterThan.add(temp.val);
          }
          temp = temp.next;
      }
      var dummy = head;
      var index = 0;
      var jndex = 0;
      while (dummy != null && index < lessThan.length) {
          dummy.val = lessThan[index];
          index += 1;
          dummy = dummy.next;
      }

      while (dummy != null && jndex < greaterThan.length) {
          dummy.val = greaterThan[jndex];
          jndex += 1;
          dummy = dummy.next;
      }

      return head;

  }
}