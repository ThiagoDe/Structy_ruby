graph = {
  f: ['g', 'i'],
  g: ['h'],
  h: [],
  i: ['g', 'k'],
  j: ['i'],
  k: []
};

def hasPath(graph, src, dst) # ts O(n)
   queue = [ src ]

   while queue.length > 0
        current = queue.shift 
        graph[current.to_sym].each do |neighbor|
            return true if neighbor == dst 
            queue.push(neighbor)
        end
   end
   return false
end 

p hasPath(graph, 'f', 'k'); #// true
