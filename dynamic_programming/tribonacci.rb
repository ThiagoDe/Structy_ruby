def tribonacci(n, memo = {})
    return 0 if n == 0 || n == 1 
    return 1 if n == 2 
    return memo[n] if memo[n]
    memo[n] = tribonacci(n - 1, memo) + tribonacci(n - 2, memo) + tribonacci(n - 3, memo)
    return memo[n]
end

p tribonacci(37); #// -> 1132436852