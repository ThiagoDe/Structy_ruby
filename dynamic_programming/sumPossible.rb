require 'byebug'
def sumPossible(amount, numbers, memo = {})
    
    return memo[amount] if memo[amount]
    return false  if amount < 0 
    return true if amount == 0

    numbers.each do |num|
        debugger
        if sumPossible(amount - num, numbers, memo) == true 
            memo[amount] = true 
            # debugger
            return true
        end
    end
    memo[amount] = false
    return false 
end

# p sumPossible(271, [10, 8, 265, 24]);# // -> false
p sumPossible(13, [3, 5]) # -> true
