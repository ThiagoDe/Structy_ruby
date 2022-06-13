require '../binary_tree/nodeClass'

a = Node.new("a");
b = Node.new("b");
c = Node.new("c");
d = Node.new("d");
e = Node.new("e");
f = Node.new("f");
g = Node.new("g");
h = Node.new("h");

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;
e.left = g;
e.right = h;

# //      a
# //    /    \
# //   b      c
# //  / \      \
# // d   e      f
# //    / \
# //    g  h
def flipTree(root)
    return nil if root.nil?
    left = flipTree(root.left)
    right = flipTree(root.right)
    root.left = right
    root.right = left  
    return root
end

p flipTree(a); 

# //       a
# //    /    \
# //   c      b
# //  /     /   \
# // f     e    d
# //     /  \
# //    h    g
