require '../linked_list/nodeClass'

a = Node.new('a');
b = Node.new('b');
c = Node.new('c');
d = Node.new('d');
e = Node.new('e');
f = Node.new('f');

a.next = b;
b.next = c;
c.next = d;
d.next = e;
e.next = f;

def middleValue(head)
    fast = head
    slow = head
    
    while fast && fast.next 
        slow = slow.next
        fast = fast.next.next 
    end

    return slow.val 
end

#// a -> b -> c -> d -> e -> f
p middleValue(a); #// d