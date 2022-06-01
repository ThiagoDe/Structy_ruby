require './nodeClass'

a = Node.new(3);
b = Node.new(11);
c = Node.new(4);
d = Node.new(4);
e = Node.new(-2);
f = Node.new(1);

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;

# //       3
# //    /    \
# //   11     4
# //  / \      \
# // 4   -2     1

def treeMinValue(root) # ts O(n)
    return Float::INFINITY if !root
    min = root.val

    left = treeMinValue(root.left)
    right = treeMinValue(root.right)
    return [min, left, right].min 
end

p treeMinValue(a); #// -> -2