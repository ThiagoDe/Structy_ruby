require './nodeClass'

a = Node.new('a');
b = Node.new('b');
c = Node.new('c');
d = Node.new('d');
e = Node.new('e');
f = Node.new('f');
g = Node.new('g');

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;
e.left = g

# //      a
# //    /   \
# //   b     c
# //  / \     \
# // d   e     f
# //    /
# //   g
def howHigh(root, l = 0) # ts O(n)
    queue = [[root, l]]
    current = root
    maxHight = 0
    while queue.length > 0
        # p queue.shift
        node, l = queue.shift
        queue.push([node.left, l + 1]) if node.left
        queue.push([node.right, l + 1]) if node.right
        maxHight = l if !l.nil? && l > maxHight 
        
    end
    return maxHight
end
p howHigh(a); #// -> 3