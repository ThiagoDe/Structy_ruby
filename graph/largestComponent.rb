require 'set'

def largestComponent(graph) # t O(e) s O(n)
    visited = Set.new 
    max = 0
    graph.each do |k, v|
        component = traverse(graph, k.to_i, visited)
        max = component if (component > max)
    end
    max 
end

def traverse(graph, node, visited)
    return 0 if visited.include?(node)
    visited.add(node)
    # p graph
    # p node 
    size = 1 
    graph[node].each do |neighbor|
        size += traverse(graph, neighbor.to_i, visited)
    end
    return size 
end

p largestComponent({
  3 => [],
  4 => ['6'],
  6 => ['4', '5', '7', '8'],
  8 => ['6'],
  7 => ['6'],
  5 => ['6'],
  1 => ['2'],
  2 => ['1']
});# // -> 4