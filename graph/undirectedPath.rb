require 'set'
edges = [
  ['i', 'j'],
  ['k', 'i'],
  ['m', 'k'],
  ['k', 'l'],
  ['o', 'n']
];

def undirectedPath(edges, node1, node2)
    graph = graphBuilder(edges)
    set = Set.new 
    return hasPath(graph, node1, node2, set)
end

def hasPath(graph, src, dst, visited) # ts O(n)
    return true if src == dst 
    return false if visited.include?(src)
    visited.add(src)
    graph[src].each do |neighbor|
        return true if hasPath(graph, neighbor, dst, visited)
    end
    return false 
end 

def graphBuilder(edges)
    graph = {}

    edges.each do |nodes|
        node1, node2 = nodes 
        graph[node1] = [] if !graph[node1]
        graph[node1].push(node2)

        graph[node2] = [] if !graph[node2]
        graph[node2].push(node1)
    end
    graph
end

p undirectedPath(edges, 'j', 'l');# // -> true
