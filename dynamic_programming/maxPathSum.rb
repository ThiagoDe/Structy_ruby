grid = [
    [1, 3, 12],
    [5, 1, 1],
    [3, 6, 1],
    ];

    def maxPathSum(grid, r=0, c=0, memo = {})
        pos = r.to_s + ',' + c.to_s
        return memo[pos] if memo.has_key?(pos)
        return 0 if r == grid.length || c == grid[0].length
        return grid[r][c] if r == grid.length - 1 && c == grid[0].length - 1

        down = maxPathSum(grid, r + 1, c, memo)
        right = maxPathSum(grid, r, c + 1, memo)

        memo[pos] = grid[r][c] + [down, right].max 
        return memo[pos]
    end

p maxPathSum(grid)#; // -> 18