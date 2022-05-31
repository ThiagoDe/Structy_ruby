require './nodeClass'

def createLinkedList(arr, i = 0)
    # return nil if arr.nil?
    # head = Node.new(nil)
    # current = head
    # arr.each do |v|
    #     current.next = Node.new(v)
    #     current = current.next
    # end
    # return head.next  
    return nil if (i == arr.length) # time O(n), Space O(n) because we have to create a new node for each element
    head = Node.new(arr[i])
    head.next = createLinkedList(arr, i + 1)
    return head
end

head = createLinkedList([1, 7, 1, 8])

    current = head

    while current
        p current.val
        current = current.next 
    end
# // h -> e -> y