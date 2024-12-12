/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {

    ListNode? newHead = ListNode(0, head);

    ListNode? curr = head;
    ListNode? prev = newHead;

    while (curr != null) {
      bool isDuplicate = false;

      while (curr?.next != null && curr!.val == curr.next!.val) {
        isDuplicate = true;
        curr = curr.next;
      }

      if (isDuplicate) {
        prev?.next = curr?.next;
      } else {
        prev = prev?.next;
      }

      curr = curr?.next;
    }

    return newHead.next;
  }
}