require './nodeClass'

a = Node.new("a");
b = Node.new("b");
c = Node.new("c");
d = Node.new("d");
e = Node.new("e");
f = Node.new("f");
g = Node.new("g");
h = Node.new("h");
i = Node.new("i");

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;
e.left = g;
e.right = h;
f.left = i;

# //         a
# //      /    \
# //     b      c
# //   /  \      \
# //  d    e      f
# //      / \    /
# //     g  h   i

def treeLevels(root)
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
    return levels 
end

p treeLevels(a); 
# // [
# //   ['a'],
# //   ['b', 'c'],
# //   ['d', 'e', 'f'],
# //   ['g', 'h', 'i']
# // ]