graph = {
  'a' => ['c', 'b'],
  'b' => ['c'],
  'c' => [],
  'q' => ['r'],
  'r' => ['s', 'u', 't'],
  's' => ['t'],
  't' => ['u'],
  'u' => []
};

def longestPath(graph) # t O(e) , s O(n)
    distance = {}

    graph.each do |k, v|
       distance[k] = 0 if graph[k].length == 0
    end
    
    graph.each do |k, v|
         traverse(graph, k, distance)     
    end
    return distance.values.max 
end     

def traverse(graph, k, distance)
    return distance[k] if distance[k]
    count = 0
    graph[k].each do |neighbor|

        memo = traverse(graph, neighbor, distance)
        count = memo if memo > count
    end

    distance[k] = count + 1
    return  distance[k] 
end

p longestPath(graph); #// -> 2
