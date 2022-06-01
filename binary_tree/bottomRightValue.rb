require './nodeClass'

a = Node.new(-1);
b = Node.new(-6);
c = Node.new(-5);
d = Node.new(-3);
e = Node.new(-4);
f = Node.new(-13);
g = Node.new(-2);
h = Node.new(6);

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;
e.left = g;
e.right = h;

# //        -1
# //      /   \
# //    -6    -5
# //   /  \     \
# // -3   -4   -13
# //     / \       
# //    -2  6

def bottomRightValue(root) # ts O(n)
    queue = [root]
    current = root 
    while  queue.length > 0
        current = queue.shift 

        queue.push(current.left) if current.left
        queue.push(current.right) if current.right 
    end

    return current.val
end

p bottomRightValue(a); #// -> 6