require '../binary_tree/nodeClass'
require 'set'

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
def lowestCommonAncestor(root, val1, val2)
    path1 = dfs(root, val1)
    path2 = dfs(root, val2)
    
    set = Set.new(path1)
    path2.each do |el|
        return el if set.include?(el)
    end
end

def dfs(root, target)
    return nil if root.nil?
    return [root.val] if root.val == target
    left = dfs(root.left, target)
    if left 
        left.push(root.val)
        return left 
    end
    right = dfs(root.right, target) 
    if right
        right.push(root.val)
        return right 
    end
    return nil
end


p lowestCommonAncestor(a, 'd', 'h'); #// b
p lowestCommonAncestor(a, 'd', 'g'); #// b
p lowestCommonAncestor(a, 'g', 'c'); #// a
p lowestCommonAncestor(a, 'b', 'g'); #// b
p lowestCommonAncestor(a, 'f', 'c'); #/ c