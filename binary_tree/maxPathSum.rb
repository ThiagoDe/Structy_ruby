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

def maxPathSum(root) # ts O(n)
    return - Float::INFINITY if (root.nil?)
    return root.val if root.left.nil? && root.right.nil?

    return root.val + [maxPathSum(root.left), maxPathSum(root.right)].max
end

p maxPathSum(a); # // -> 18