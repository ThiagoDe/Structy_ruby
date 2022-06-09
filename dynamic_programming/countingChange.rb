def countingChange(amount, coins, i = 0, memo = {}) # not working in loop
    key = amount.to_s + ',' + i.to_s 
    return memo[key] if memo.has_key?(key)
    return 1 if amount == 0
    return 0 if i == coins.length
    # p i
    coin = coins[i]
    qty = 0
    total = 0
    while i < coins.length && (qty * coin) <= amount
        remainder = amount - (qty * coin)
        p result = countingChange(remainder, coins, i + 1)
        total += result
        
        qty += 1
    end

    memo[key] = total 
    p memo
    return memo[key]
end

p countingChange(240, [1, 2, 3, 4, 5, 6, 7, 8, 9]);# // -> 1525987916