/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseKGroup(ListNode? head, int k) {
    int count = 0;
    ListNode? current = head;
    while (count < k && current != null) {
      current = current.next;
      count++;
    }

    if (count == k) {
      ListNode? reversedHead = reverseLinkedList(head, k);
      head?.next = reverseKGroup(current, k);
      return reversedHead;
    }

    return head;
  }

  ListNode? reverseLinkedList(ListNode? head, int k) {
    ListNode? prev = null;
    ListNode? curr = head;
    ListNode? next;

    while (k > 0 && curr != null) {
      next = curr.next;
      curr.next = prev;
      prev = curr;
      curr = next;
      k--;
    }

    return prev;
  }
}