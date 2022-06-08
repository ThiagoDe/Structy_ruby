def minChange(amount, coins)
    answer = minChangeH(amount, coins)
    if answer == Float::INFINITY
        return - 1
    else
        return answer 
    end 
end

def minChangeH(amount, coins, memo = {})
     if memo.has_key?(amount)
        return memo[amount]
     end
    return 0 if amount == 0
    if amount < 0 
    return Float::INFINITY 
    end  

    minCoins = Float::INFINITY
    coins.each do |coin|
        numCoins = 1 + minChangeH(amount - coin, coins, memo)
        minCoins = numCoins if numCoins < minCoins
    end
    memo[amount] = minCoins
    return memo[amount]
end

p minChange(200, [1, 5, 10, 25]) ;# // -> 8; 