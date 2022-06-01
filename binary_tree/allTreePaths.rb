require './nodeClass'

a = Node.new('a');
b = Node.new('b');
c = Node.new('c');
d = Node.new('d');
e = Node.new('e');
f = Node.new('f');

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

def allTreePaths(root) # ~O(n)
    return [] if root.nil?
    return [[root.val]] if root.left.nil? && root.right.nil?
   paths = []
   left = allTreePaths(root.left)
   left.each do |sub|
    paths.push([root.val, *sub])
   end

   right = allTreePaths(root.right)
   right.each do |sub|
    paths.push([root.val, *sub])
   end

   return paths 
end

p allTreePaths(a);# // ->
# // [ 
# //   [ 'a', 'b', 'd' ], 
# //   [ 'a', 'b', 'e' ], 
# //   [ 'a', 'c', 'f' ] 
# // ] 
