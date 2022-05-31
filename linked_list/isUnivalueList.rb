require './nodeClass'

a = Node.new(7);
b = Node.new(7);
c = Node.new(4);

a.next = b;
b.next = c;

# // 7 -> 7 -> 4
def isUnivalueList(head)
    value = head.val
    current = head.next

    while current # O(n) num of nodes , s O(1)
        return false if current.val != value
        current = current.next 
    end

    return true 
end 

p isUnivalueList(a); #// false