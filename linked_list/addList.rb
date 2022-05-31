require './nodeClass'

# //   89
# // + 47
# // ----
# //  136

a1 = Node.new(9);
a2 = Node.new(8);
a1.next = a2;
# // 9 -> 8

b1 = Node.new(7);
b2 = Node.new(4);
b1.next = b2;
# // 7 -> 4

def addLists(h1, h2)
    current1 = h1
    current2 = h2 
    dummyhead = Node.new(nil)
    tail = dummyhead
    carry = 0


    while current1 || current2 || carry == 1 # t&s O(max(h1,h2))
        v1 = !current1 ? 0 : current1.val
        v2 = !current2 ? 0 : current2.val
        sum = carry + v1 + v2
        carry = sum > 9 ? 1 : 0
        digit = sum % 10

        current1 = current1.next if current1
        current2 = current2.next if current2

        tail.next = Node.new(digit)
        tail = tail.next 

    end
    return dummyhead.next 
end

head = addLists(a1, b1);

    current = head 

    while current
        p current.val
        current = current.next 
    end
# // 6 -> 3 -> 1