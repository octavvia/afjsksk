/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
      var newL1 = [];
      var newL2 = [];
      var finalListNode = ListNode();
      while (l1 != null){        
              newL1.insert(0,l1.val);
              l1 = l1.next;  
      }
      while (l2 != null){
              newL2.insert(0,l2.val);
              l2 = l2.next; 
      }
    
     final sum = ( BigInt.parse(newL1.join('')) +  BigInt.parse(newL2.join('')) );
     final reversedSumList = sum.toString().split('').reversed;
     final nodes = reversedSumList.map((e)=>ListNode(int.parse(e))).toList();

     for(var i =0 ; i<nodes.length-1; i++){
             nodes[i].next = nodes[i+1];
     }
     finalListNode = nodes[0];

     return finalListNode;
  }
}