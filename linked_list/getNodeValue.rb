require './nodeClass'

 a = Node.new("a");
 b = Node.new("b");
 c = Node.new("c");
 d = Node.new("d");

a.next = b;
b.next = c;
c.next = d;

# // a -> b -> c -> d
def getNodeValue(head, targetIndex, level = 0) # t s complexity O(n)
    return nil if head.nil?
    return head.val if targetIndex == level
    return getNodeValue(head.next, targetIndex, level + 1)
end
p getNodeValue(a, 2); # 'c'
