require './nodeClass'

a = Node.new('a');
b = Node.new('b');
c = Node.new('c');
d = Node.new('d');
e = Node.new('e');
f = Node.new('f');

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;

# //      a
# //    /   \
# //   b     c
# //  / \     \
# // d   e     f

def depthFirstValues(root)
    return [] if !root 
    return [root.val] if (!root.left && !root.right) 
    return [root.val, *depthFirstValues(root.left), *depthFirstValues(root.right)]
end

p depthFirstValues(a); 
# //    -> ['a', 'b', 'd', 'e', 'c', 'f']