require './nodeClass'
 a = Node.new("a");
 b = Node.new("b");
 c = Node.new("c");
 d = Node.new("d");

a.next = b;
b.next = c;
c.next = d;

# // a -> b -> c -> d
def linkedListFind(head, target) # t s complexity O(n)
    return false if head.nil?
    return true if head.val == target
    return linkedListFind(head.next, target)
end

p linkedListFind(a, "c"); # true
