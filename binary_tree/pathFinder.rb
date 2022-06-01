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
def pathFinder(root, target) #ts O(n)
    return nil if root.nil?
    return [root.val] if root.val == target
    left = pathFinder(root.left, target)
    return [root.val, *left] if left 
    
    right = pathFinder(root.right, target)
    return [root.val, *right] if right
end

p pathFinder(a, 'e'); #// -> [ 'a', 'b', 'e' ]