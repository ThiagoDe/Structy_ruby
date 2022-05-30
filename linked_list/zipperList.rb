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
# // a -> b -> c

 x = Node.new("x");
 y = Node.new("y");
 z = Node.new("z");
x.next = y;
y.next = z;
# // x -> y -> z

def zipperLists(a, b)
    head = a
    tail = head
    node1 = a.next
    node2 = b
    count = 0 # use variable to track odd even

    while node1 && node2 # time O(min(n,m) space O(1)reassigning -- rearange 
        if count % 2 == 0
            tail.next = node2 
            node2 = node2.next 
        else
            tail.next = node1
            node1 = node1.next
        end
        tail = tail.next 
        count += 1
    end

    tail.next = node1 if !node1.nil?
    tail.next = node2 if !node2.nil?
    return head 
end

 head = zipperLists(a, x);
    current = head
 while current
    p current.val
    current = current.next 
 end
# // a -> x -> b -> y -> c -> z -> d -> e -> f
