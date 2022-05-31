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
   if j == i
     node.next = head 
     return node
   end
    current = head
    nextNode = current.next 

    while current # T O(n) S O(1)
        if j == i - 1
            current.next = node 
            node.next = nextNode 
            break
        else
            current = current.next 
            nextNode = current.next 
        end
        j += 1
    end 
    return head
end

p head = insertNode(a, 'x', 4);

    current = head 

    while current
        p current.val
        current = current.next 
    end


# // a -> b -> x -> c -> d