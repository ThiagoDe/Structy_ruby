require './nodeClass'

a = Node.new(5);
b = Node.new(5);
c = Node.new(7);
d = Node.new(7);
e = Node.new(7);
f = Node.new(6);

a.next = b;
b.next = c;
c.next = d;
d.next = e;
e.next = f;

# // 5 -> 5 -> 7 -> 7 -> 7 -> 6

def longestStreak(head)
    max = 0
    count = 0
    value = nil
    current = head

    while current
        if current.val == value
            count += 1
        else
            count = 1
        end
        value = current.val
        max = count if count > max
        current = current.next
        # p current.val
        p max
    end
    
    return nil if max == 0
    return max
end

p longestStreak(a); #// 3