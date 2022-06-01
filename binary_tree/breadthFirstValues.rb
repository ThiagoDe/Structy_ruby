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

def breadthFirstValues(root) # t O(n) s 
    return [] if !root
    tree = []
    queue = [root]

    while queue.length > 0
        current = queue.shift()
        tree.push(current.val)
        queue.push(current.left) if current.left != nil 
        queue.push(current.right) if current.right != nil
    end

    return tree
end

p breadthFirstValues(a); 
# //    -> ['a', 'b', 'c', 'd', 'e', 'f']