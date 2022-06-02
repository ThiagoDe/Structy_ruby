require 'set'

edges = [
  ['w', 'x'],
  ['x', 'y'],
  ['z', 'y'],
  ['z', 'v'],
  ['w', 'v']
];


def shortestPath(edges, nodeA, nodeB) # ts O(e) edges
    graph = graphBuilder(edges)
    
    return explore(graph, nodeA, nodeB, Set.new)
    
end

def explore(graph, nodeA, nodeB, visited)
    queue = [[nodeA, 0]]
    
    while queue.length > 0
        node, distance = queue.shift
        return distance if node == nodeB 
        
        graph[node].each do |k|
            if !visited.include?(k)
                visited.add(k)
                queue.push([k, distance + 1])
            end
        end
    end
    return - 1
end

def graphBuilder(edges)
    graph = {}
    edges.each do |nodes|
        a, b = nodes 
        graph[a] = [] if !graph[a]
        graph[a].push(b)
        graph[b] = [] if !graph[b]
        graph[b].push(a)
    end
    graph
end

# p shortestPath(edges, 'm', 's') #// -> 6
p shortestPath(edges, 'w', 'z')#; // -> 2
