def fib(n, memo = {})
    return n if n == 0 || n == 1
    return memo[n] if memo[n]
    memo[n] = fib(n - 1, memo) + fib(n - 2, memo)
    return memo[n]
end

p fib(46);# // -> 1836311903
