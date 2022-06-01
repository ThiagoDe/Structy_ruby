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

def treeSum(root) # ts O(n) 
    return 0 if root.nil?
    return root.val + treeSum(root.left) + treeSum(root.right)
end

p treeSum(a); #// -> 21