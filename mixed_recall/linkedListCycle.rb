require '../linked_list/nodeClass'
require 'set'

a = Node.new('a');
b = Node.new('b');
c = Node.new('c');
d = Node.new('d');

a.next = b;
b.next = c;
c.next = d;
d.next = b; #// cycle

# //         _______
# //       /        \
# // a -> b -> c -> d 
def linkedListCycle(head)
    set = Set.new 
    current = head

    while current
        return true if set.include?(current.val)
        set.add(current.val)
        current = current.next
    end
    return false
end

p linkedListCycle(a); # // true