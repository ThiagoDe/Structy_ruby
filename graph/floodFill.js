var floodFill = function(image, sr, sc, newColor) {
    // check 4 dir and if neighbor === srCell 
    // start flooding
    // make sure we are inboard ok t
    // flooding => traverse df
    const deltas = [ [0,1],[0, -1], [1, 0], [-1, 0]]; // 4 dir
    const pos = sr + ',' + sc 
    let grid = image.slice();
    let oldColor = image[sr][sc];
    grid[sr][sc] = newColor;
    
    for (let delta of deltas ) {
        let [r, c] = delta;
        
        let newR = r + sr;
        let newC = c + sr;
        // console.log(newR)
        // console.log(newC)
        // check is neighbor == start 
     
        if (inBounds(image, newR, newC) && oldColor === image[newR][newC]){
               // flood method here
            flood(grid, newR, newC, new Set(pos), newColor, oldColor);
        }
    }
    return grid;
}

const flood = (grid, r, c, visited, newColor, oldColor) => {
    let pos = r + ',' + c;
    if (visited.has(pos)) return;
    visited.add(pos)
    if (inBounds(grid, r, c) && grid[r][c] === oldColor) {  
      
        console.log(grid[r][c])
        grid[r][c] =  newColor;
        flood(grid, r + 1, c, visited, newColor, oldColor);
        flood(grid, r - 1, c, visited, newColor, oldColor);
        flood(grid, r, c + 1, visited, newColor, oldColor);
        flood(grid, r, c - 1, visited, newColor, oldColor);
    }
    return grid;
}
const inBounds = (image, sr, sc) => {
    const rInbounds = sr >= 0 && sr < image.length;
    const cInbounds = sc >= 0 && sc < image[0].length;
    
    return rInbounds && cInbounds
}

// [[0,0,0],[0,0,1]]
// 1
// 0
// 2

// console.log(floodFill([[0,0,0],[0,0,1]], 1, 0, 2)); // [[2,2,2],[2,2,1]]
console.log(floodFill([[0,0,0],[1,0,1]], 1, 0, 2)); // [[0,0,0],[2,0,1]]
// [[0,0,0],[1,0,1]]
// 1
// 0
// 2