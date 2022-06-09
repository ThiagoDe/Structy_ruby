def summingSquares(n, memo = {})
    return memo[n] if memo.has_key?(n)
    return 0 if n == 0

  i = 1
  min = Float::INFINITY 
  while i <= Math.sqrt(n)
    square = i * i 
    numSquares = 1 + summingSquares(n - square, memo)
    min = [numSquares, min].min 
    i += 1
  end
  memo[n] = min 
  return memo[n]
end

p summingSquares(12); #// -> 3