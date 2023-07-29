

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {

  // Binary search for finding insertion point of given value
  int findInsertionIndex(List<List<int>> sortedList, int valueToInsert) {
    int left = 0;
    int right = sortedList.length - 1;

    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);

      if (sortedList[mid] == valueToInsert) {
        return mid;
      } else if (sortedList[mid][1] <= valueToInsert) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return left;
  }

  ListNode? mergeKLists(List<ListNode?> lists) {

    // Contains temporary array of best candidates from each non null list.
    var best_list = <List<int>>[];

    // Fill temporary array with initial values
    for (int n = 0; n < lists.length; ++n) {
      if (lists[n] == null)
        continue;
      best_list.add([n, lists[n]!.val]);
    }
    if (best_list.isEmpty)
      return null;

    ListNode? start = ListNode();
    ListNode? cur_node = start;

    // Make a copy, we will update heads of those lists.
    List<ListNode?> lists_copy = List<ListNode?>.from(lists);

    // Do a one time sort
    best_list.sort((a, b) => a[1] - b[1]);

    while(true) {

      // First best_list item is always next value to insert into resulting list
      List<int> smallest = best_list[0];
      cur_node!.val = smallest[1];

      // Get its node, to check for its list next value
      var smallest_node = lists_copy[smallest[0]];
      smallest_node = smallest_node!.next;

      // If this list is not ended, then merge its next value into sorted best_list
      if (smallest_node != null) {
        // Update best_list record with next value, and reinsert it at the sorted position
        smallest[1] = smallest_node.val;
        lists_copy[smallest[0]] = smallest_node;
        var index = findInsertionIndex(best_list, smallest[1]);
        
        // Sometime there is an insertion at 0 and later below removeAt(0), 
        //  I checked if avoiding it would speed things up - but it didnt, it
        //  actually made it worse - maybe because additional if statement 
        //  caused cpu predictions to slow down.
        best_list.insert(index, smallest);
      }
      best_list.removeAt(0);

      if (!best_list.isEmpty) {
        cur_node.next = ListNode();
        cur_node = cur_node.next;
      }
      else
        break;
    }

    return start;
  }
}