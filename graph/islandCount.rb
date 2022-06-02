require 'set'

grid = [
  ['W', 'L', 'W', 'W', 'W'],
  ['W', 'L', 'W', 'W', 'W'],
  ['W', 'W', 'W', 'L', 'W'],
  ['W', 'W', 'L', 'L', 'W'],
  ['L', 'W', 'W', 'L', 'L'],
  ['L', 'L', 'W', 'W', 'W'],
];

def islandCount(grid) # t s O(rc)
    visited = Set.new 
    count = 0
    (0...grid.length).each do |r|
        (0...grid[0].length).each do |c|
            if grid[r][c] == 'L' 
            count += 1 if explore(grid, r, c, visited)
            end
        end
    end
    return count
end

def explore(grid, r, c, visited)
    rBounds = r >= 0 && r < grid.length
    cBounds = c >= 0 && c < grid[0].length 
    
    pos = r.to_s + ',' + c.to_s  
    return false if visited.include?(pos)
    visited.add(pos)
    return false if !rBounds || !cBounds || grid[r][c] == "W"

    explore(grid, r + 1, c, visited)
    explore(grid, r - 1, c, visited)
    explore(grid, r, c + 1, visited)
    explore(grid, r, c - 1, visited)

    return true
end
p islandCount(grid); #// -> 3
