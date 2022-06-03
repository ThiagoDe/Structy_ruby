require 'set'

grid = [
  ['O', 'O', 'O', 'O', 'O'],
  ['O', 'X', 'O', 'O', 'O'],
  ['O', 'X', 'X', 'O', 'O'],
  ['O', 'X', 'C', 'O', 'O'],
  ['O', 'X', 'X', 'O', 'O'],
  ['C', 'O', 'O', 'O', 'O'],
];

def closestCarrot(grid, rStart, cStart )
  pos = rStart.to_s + ',' + cStart.to_s
  visited = Set.new([pos])
  queue = [ [rStart, cStart, 0 ]]

  while queue.length > 0
    r, c, distance = queue.shift
    return distance if grid[r][c] == 'C'
    deltas = [[1, 0], [0, 1], [-1, 0], [0, -1]]

    deltas.each do |delta|
      rDelta, cDelta = delta
      newR = r + rDelta
      newC = c + cDelta
      pos = [newR.to_s, ",", newC.to_s]
      rInbounds = newR >= 0 && newC < grid.length 
      cInbounds = newC >= 0 && newC < grid[0].length 
      if !visited.include?(pos) && grid[r][c] != 'X' && rInbounds && cInbounds
        visited.add(pos)
        queue.push([ newR, newC, distance + 1])   
      end
    end
  end

  return - 1
end

p closestCarrot(grid, 1, 2);# // -> 4