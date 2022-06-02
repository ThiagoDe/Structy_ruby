require 'set'

grid = [
  ['W', 'L', 'W', 'W', 'W'],
  ['W', 'L', 'W', 'W', 'W'],
  ['W', 'W', 'W', 'L', 'W'],
  ['W', 'W', 'L', 'L', 'W'],
  ['L', 'W', 'W', 'L', 'L'],
  ['L', 'L', 'W', 'W', 'W'],
];

def minimumIsland(grid)
    visited = Set.new
    min = Float::INFINITY
    (0...grid.length).each do |r|
        (0...grid[0].length).each do |c|
            if grid[r][c] == 'L'
                island = traverse(grid, r, c, visited)
                min = island if island < min 
            end
        end
    end
    return min 
end

def traverse(grid, r, c, visited)
    return if 
end

p minimumIsland(grid); # // -> 2