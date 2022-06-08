require 'set'
grid = [
  ["W", "W", "W", "W", "W"],
  ["W", "W", "W", "W", "W"],
  ["L", "L", "W", "W", "L"],
  ["W", "L", "W", "W", "L"],
  ["W", "W", "W", "L", "L"],
  ["W", "W", "W", "W", "W"],
];

def bestBridge(grid)
    mainIsland = nil 
    (0...grid.length).each do |r|
        (0...grid[0].length).each do |c|
            if grid[r][c] == 'L'
                mainIsland = traverse(grid, r, c, Set.new )
            end
            break
        end
    end

    visited = Set.new(mainIsland)
    queue = []

    mainIsland.each do |pos|
        r = pos[0].to_i 
        c = pos[-1].to_i 

        queue.push([r, c, 0])
    end

    while queue.length > 0
        r, c, distance = queue.shift
        # p "#{r}, #{c}"
        pos = r.to_s + ',' + c.to_s 
        return distance - 1 if grid[r][c] == 'L' && !mainIsland.include?(pos)

        deltas = [[1, 0], [0, 1], [-1, 0], [0, -1]]
        deltas.each do |delta|
            
            deltaR, deltaC = delta
            
            newR = r + deltaR
            newC = c + deltaC
            newPos = newR.to_s + ',' + newC.to_s
            if isInbounds?(grid, newR, newC) && !visited.include?(newPos)
                visited.add(newPos)
                # p "#{newR}, #{newC}"
                queue.push([newR, newC, distance + 1])
              
            end
        end
    end
end

def isInbounds?(grid, r, c)
    rInbounds = r >= 0 && r < grid.length
    cInbounds = c >= 0 && c < grid[0].length 
    return rInbounds && cInbounds
end

def traverse(grid, r, c, visited)
    return visited if !isInbounds?(grid, r, c) || grid[r][c] == 'W'
    pos = r.to_s + ',' + c.to_s 
    return visited if visited.include?(pos) 
    visited.add(pos)
   
    traverse(grid, r, c + 1, visited)
    traverse(grid, r, c - 1, visited)
    traverse(grid, r + 1, c , visited)
    traverse(grid, r - 1, c , visited)

    return visited
end


p bestBridge(grid); #// -> 2