/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? secondHead;

  ListNode? reverseBetween(ListNode? head, int left, int right) {
    if (head == null || head.next == null) return head;
    if (left > 1) {
      ListNode? firstTail = head;
      for (int i = 0; i < left - 2; ++i) {
        firstTail = firstTail?.next;
      }
      ListNode? reversedTail = firstTail?.next;
      ListNode? reversedHead = reverseUntil(reversedTail, right - left);
      firstTail?.next = reversedHead;
      reversedTail?.next = secondHead;
      return head;
    } else {
      ListNode? reversedHead = reverseUntil(head, right - left);
      head.next = secondHead;
      return reversedHead;
    }
  }

  ListNode? reverseUntil(ListNode? head, int right) {
    if (right == 0) secondHead = head?.next;
    if (head == null || head.next == null || right == 0) return head;
    ListNode? next = head.next;
    ListNode? newHead = reverseUntil(next, right - 1);
    next?.next = head;
    head.next = null;
    return newHead;
  }
}