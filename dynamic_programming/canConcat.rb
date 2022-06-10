def canConcat(s, words, memo = {})
    return memo[s] if memo.has_key?(s)
    return true if s == ''
    words.each do |word|
        if s.start_with?(word)
            if canConcat(s[word.length..-1], words, memo)
            memo[s] = true 
            return memo[s]
            end
        end
    end
    memo[s] = false
    return memo[s]
end

p canConcat("oneisnone", ["on", "e", "is"]) # // -> false
p canConcat("oneisnone", ["one", "none", "is"]) # // -> true
p canConcat("rrrrrrrrrrrrrrrrrrrrrrrrrrx", ["r", "rr", "rrr", "rrrr", "rrrrr", "rrrrrr"]);# // -> false
p canConcat("santahat", ["santah", "san", "hat", "tahat"]);# // -> true