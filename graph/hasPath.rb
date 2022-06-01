graph = {
  f: ['g', 'i'],
  g: ['h'],
  h: [],
  i: ['g', 'k'],
  j: ['i'],
  k: []
};

def hasPath(graph, src, dst)
   queue = [ src ]

   while queue.length > 0
        current = queue.shift 
        p current
        p graph[:current]
        graph[current].each do |neighbor|
            return true if neighbor == dst 
            queue.push(neighbor)
        end
   end
   return false
end 

p hasPath(graph, 'f', 'k'); #// true
