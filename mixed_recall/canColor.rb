def canColor(graph)
    coloring = {}
    graph.each do |node, val|
        if !coloring.has_key?(node) && !validate(graph, node, coloring, false)
            return false
        end 
    end
    return true
end

def validate(graph, node, coloring, currentColor)
    if coloring.has_key?(node)
        return coloring[node] == currentColor
    end
    
    coloring[node] = currentColor

    graph[node].each do |neighbor|
        return false if validate(graph, neighbor, coloring, !currentColor) == false
    end
    return true
end

p canColor({
  'x'=> ["y"],
  'y'=> ["x","z"],
  'z'=> ["y"]
}); #// -> true

p canColor({
  'q'=> ["r", "s"],
  'r'=> ["q", "s"],
  's'=> ["r", "q"]
});# // -> false

p canColor({
  'a'=> ["b", "c", "d"],
  'b'=> ["a"],
  'c'=> ["a"],
  'd'=> ["a"],
}); #// -> true