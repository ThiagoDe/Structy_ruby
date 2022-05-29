require './nodeClass'

 a = Node.new (2);
 b = Node.new(8);
 c = Node.new(3);
 d = Node.new(-1);
 e = Node.new(7);

a.next = b;
b.next = c;
c.next = d;
d.next = e;

# // 2 -> 8 -> 3 -> -1 -> 7
def sumList(head) # tc/sc O(n)
    return 0 if head.nil?
    return head.val + sumList(head.next)
end 

 x = Node.new(38);
 y = Node.new(4);

x.next = y;

# // 38 -> 4

p sumList(x); # 42
p sumList(a); # 19
