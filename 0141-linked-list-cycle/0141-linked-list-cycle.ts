function hasCycle(head: ListNode | null): boolean {
    const check = new Set<ListNode | null>()
    let res: boolean = false
    
    while (head && !res){
        {check.has(head)
            ?
            res = true
            :
            check.add(head)
            head = head.next
        }
    }
    return res
};