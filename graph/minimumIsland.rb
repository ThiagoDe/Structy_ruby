require 'set'

grid = [
  ['L', 'L', 'L'],
  ['L', 'L', 'L'],
  ['L', 'L', 'L'],
];

# minimumIsland(grid); #// -> 9

def minimumIsland(grid) # ts O(rc)
    visited = Set.new
    min = Float::INFINITY
    (0...grid.length).each do |r|
        (0...grid[0].length).each do |c|
            if grid[r][c] == 'L'
                island = traverse(grid, r, c, visited)
                # p island
                min = island if island > 0 && island < min 
            end
        end
    end
    return min 
end

def traverse(grid, r, c, visited)
    rBounds = r >= 0 && r < grid.length
    cBounds = c >= 0 && c < grid[0].length 
    pos = r.to_s + ',' + c.to_s 
    return 0 if !rBounds || !cBounds || grid[r][c] == "W"
    return 0 if visited.include?(pos)
    visited.add(pos)

    count = 1
    count += traverse(grid, r + 1, c, visited)
    count += traverse(grid, r - 1, c, visited)
    count += traverse(grid, r, c + 1, visited)
    count += traverse(grid, r, c - 1, visited)

    return count
end

p minimumIsland(grid); # // -> 2