require './nodeClass'

a = Node.new("a");
b = Node.new("b");
c = Node.new("c");
d = Node.new("d");
e = Node.new("e");
f = Node.new("f");

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
def treeIncludes(root, target) # ts O(n)
    return false if root.nil?
    return true if root.val == target

    return treeIncludes(root.left, target) || treeIncludes(root.right, target)
end

p treeIncludes(a, "g"); #// -> true
