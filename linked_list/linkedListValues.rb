require './nodeClass.rb'

a = Node.new("a");
b = Node.new("b");
c = Node.new("c");
d = Node.new("d");

a.next = b;
b.next = c;
c.next = d;

def linkedListValues(head)
    # current = head
    values = []
    # while current time comp O(n) n is the number of el
    #     values.push(current.val)
    #     current = current.next
    # end

    _linkedListValues(head, values)
    return values
end

def _linkedListValues(head, values) # space complexity O(n)
    return if head.nil? 
    values.push(head.val)
    _linkedListValues(head.next, values)
end

p linkedListValues(a); # [ 'a', 'b', 'c', 'd' ]
