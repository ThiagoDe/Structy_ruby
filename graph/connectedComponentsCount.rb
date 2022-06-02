require 'set'
def connectedComponentsCount(graph)
    set = Set.new 
    count = 0
    graph.each do |k, v|
        count += 1 if explore(graph, k, set)
    end
    return count 
end

def explore(graph, node, set)
    # p [node, 'here']
    return false if set.include?(node.to_s)
    set.add(node.to_s)
    graph[node.to_sym].each do |neighbor|
        explore(graph, neighbor.to_s, set)
    end
    return true 
end

p connectedComponentsCount({
  '0': [8, 1, 5],
  '1': [0],
  '5': [0, 8],
  '8': [0, 5],
  '2': [3, 4],
  '3': [2, 4],
  '4': [3, 2]
}); #// -> 2