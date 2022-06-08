grid = [
  ["O", "O", "X"],
  ["O", "O", "O"],
  ["O", "O", "O"],
];

def countPaths(grid, r = 0, c = 0, memo = {})
    pos = r.to_s + "," + c.to_s 
    return memo[pos] if memo.has_key?(pos)
    return 0 if r == grid.length || c ==  grid[0].length || grid[r][c] == 'X'   
    return 1 if r == grid.length - 1 && c == grid[0].length - 1 

    down = countPaths(grid, r + 1, c, memo)
    right = countPaths(grid, r, c + 1, memo)

    memo[pos] = down + right
    return memo[pos]
end

p countPaths(grid);# // -> 5