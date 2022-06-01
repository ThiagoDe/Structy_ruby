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

def levelAverages(root)
    queue = [[root, 0]]
    levels = []

    while queue.length > 0
        node, l = queue.shift
        if levels[l]
        levels[l].push(node.val)
        else
        levels.push([node.val])
        end

        queue.push([node.left, l + 1]) if node.left 
        queue.push([node.right, l + 1]) if node.right       
    end

    return levels.map { |l| l.sum / l.length.to_f }
end

p levelAverages(a); #// -> [ 3, 7.5, 1 ] 
