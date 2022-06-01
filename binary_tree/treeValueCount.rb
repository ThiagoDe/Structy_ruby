require './nodeClass'

a = Node.new(12);
b = Node.new(6);
c = Node.new(6);
d = Node.new(4);
e = Node.new(6);
f = Node.new(12);

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;

# //      12
# //    /   \
# //   6     6
# //  / \     \
# // 4   6     12

def treeValueCount(root, target) # t O(n) n tree size, s O(n)
    return 0 if root.nil?
    count = 0
    count += 1 if root.val == target
    return count + treeValueCount(root.left, target) + treeValueCount(root.right, target)
end

p treeValueCount(a,  6);# // -> 3