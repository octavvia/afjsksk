function hasCycle(head: ListNode | null): boolean {
    if (!head || !head.next) {
        return false; // No cycle if there are less than 2 nodes
    }
    
    let slow = head;
    let fast = head.next;
    
    while (fast && fast.next) {
        if (slow === fast) {
            return true; // Cycle detected
        }
        slow = slow.next;
        fast = fast.next.next;
    }
    
    return false; // No cycle detected
}
