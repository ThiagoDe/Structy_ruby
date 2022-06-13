require '../binary_tree/nodeClass'

a = Node.new('a');
b = Node.new('b');
c = Node.new('c');
d = Node.new('d');
e = Node.new('e');
f = Node.new('f');
g = Node.new('g');
h = Node.new('h');

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
def leftyNodes(root)
   values = []
   traverse(root, 0, values)
   return values 
end

def traverse(root, level, values)
    return if root.nil? 
    values.push(root.val) if values.length == level

    traverse(root.left, level + 1, values)
    traverse(root.right, level + 1, values)
end
p leftyNodes(a); #// [ 'a', 'b', 'd', 'g' ]