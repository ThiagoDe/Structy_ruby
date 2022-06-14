def tolerantTeams(rivalries)
    graph = buildGraph(rivalries)
    coloring = {}
    graph.each do |node, val|
        if !coloring.has_key?(node) && !isBipartite?(graph, node, coloring, false)
            return false
        end
    end
    return true 
end


def isBipartite?(graph, node, coloring, currentColor)
    if coloring.has_key?(node)
        return coloring[node] == currentColor
    end
    coloring[node] = currentColor

    graph[node].each do |neighbor|
        if !isBipartite?(graph, neighbor, coloring, !currentColor)
            return false 
        end
    end
    return true
end

def buildGraph(rivalries)
    graph = {}
    rivalries.each do |rivalries|
        a, b = rivalries
      graph[a] = [] if !graph.has_key?(a)
      graph[b] = [] if !graph.has_key?(b)
      graph[a].push(b)
      graph[b].push(a)
    end
    return graph
end

p tolerantTeams([
  ['philip', 'seb'],
  ['raj', 'nader'],
  ['raj', 'philip'],
  ['seb', 'raj']
]); #// -> false

p tolerantTeams([
  ['cindy', 'anj'],
  ['alex', 'matt'],
  ['alex', 'cindy'],
  ['anj', 'matt'],
  ['brando', 'matt']
]); #// -> true
