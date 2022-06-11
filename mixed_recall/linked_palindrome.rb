require '../linked_list/nodeClass'

a = Node.new(3);
b = Node.new(2);
c = Node.new(7);
d = Node.new(7);
e = Node.new(2);
f = Node.new(3);

a.next = b;
b.next = c;
c.next = d;
d.next = e;
e.next = f;

def linkedPalindrome(head)
    list = []
    current = head 

    while current
        list.push(current.val)
        current = current.next 
    end

    return list == list.reverse
end 

#// 3 -> 2 -> 7 -> 7 -> 2 -> 3
p linkedPalindrome(a)#; // true