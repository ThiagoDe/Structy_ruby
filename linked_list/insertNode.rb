require './nodeClass'

a = Node.new("a");
b = Node.new("b");
c = Node.new("c");
d = Node.new("d");

a.next = b;
b.next = c;
c.next = d;

# // a -> b -> c -> d

def insertNode(head, value, i)
    node = Node.new(value)
    j = 0
    node.next = head if j == i
    current = head
    nextNode = current.next 

    while current
        if j == i - 1
            current.next = node 
            node.next = nextNode 
            break
        else
            current = current.next 
            nextNode = current.next if current.next
        end
        j += 1
    end 
    return head
end

head = insertNode(a, 'x', 0);

    current = head 

    while current
        p current.val
        current = current.next 
    end


# // a -> b -> x -> c -> d