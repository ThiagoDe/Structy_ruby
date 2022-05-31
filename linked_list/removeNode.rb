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
def removeNode(head, target)
    return head.next if head.val == target
    current = head 
    prev = Node.new(nil)

    while current # t O(n) s O(1)
        if current.val == target
            prev.next = current.next
        end
        prev = current
        current = current.next 
    end

    return head
end 

head = removeNode(a, "a");
# // a -> b -> d -> e -> f
    current = head
while current
    p current.val
    current = current.next 
end
