require './nodeClass'

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
f.right = h;

# //      a
# //    /   \
# //   b     c
# //  / \     \
# // d   e     f
# //    /       \
# //   g         h

def leafList(root) # O(n)
    return [] if root.nil?
    return [root.val] if root.left.nil? && root.right.nil?
    return [*leafList(root.left), *leafList(root.right)]
end 

p leafList(a); #// -> [ 'd', 'g', 'h' ]