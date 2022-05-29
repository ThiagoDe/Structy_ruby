require './nodeClass'

 a = Node.new("a");
 b = Node.new("b");
 c = Node.new("c");
 d = Node.new("d");
 e = Node.new("e");
 f = Node.new("f");

a.next = b;
b.next = c;
c.next = d;
d.next = e;
e.next = f;

# // a -> b -> c -> d -> e -> f
def reverseList(head) # t O(n) s O(1)
    current = head
    prev = nil
    
    while current
        nextNode = current.next
        current.next = prev 
        prev = current
        current = nextNode
    end
    return prev
end

p reverseList(a); # f -> e -> d -> c -> b -> a
