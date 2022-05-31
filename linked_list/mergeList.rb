require './nodeClass'

 a = Node.new(5);
 b = Node.new(7);
 c = Node.new(10);
 d = Node.new(12);
 e = Node.new(20);
 f = Node.new(28);
a.next = b;
b.next = c;
c.next = d;
d.next = e;
e.next = f;
# // 5 -> 7 -> 10 -> 12 -> 20 -> 28

 q = Node.new(1);
 r = Node.new(8);
 s = Node.new(9);
 t = Node.new(10);
q.next = r;
r.next = s;
s.next = t;
# // 1 -> 8 -> 9 -> 10

def mergeLists(a, b)
    dummyhead = Node.new(nil)
    tail = dummyhead
    current1 = a
    current2 = b

    while current1 && current2
        if current1.val <= current2.val
            tail.next = current1
            current1 = current1.next
        else
            tail.next = current2
            current2 = current2.next
        end
        tail = tail.next 
    end

    tail.next = current1 if !current1.nil?
    tail.next = current2 if !current2.nil?
    dummyhead.next
end

# p mergeLists(a, q);

 head = mergeLists(a, q);
    current = head
 while current
    p current.val
    current = current.next 
 end
# // 1 -> 5 -> 7 -> 8 -> 9 -> 10 -> 10 -> 12 -> 20 -> 28 