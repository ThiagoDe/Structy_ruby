def maxPalinSubsequence(str, i = 0, j = str.length - 1, memo = {})
    pos = i.to_s + "," + j.to_s 
    return memo[pos] if memo.has_key?(pos)
    return 1 if i == j 
    return 0 if i > j

        if str[i] == str[j]
            memo[pos] = 2  + maxPalinSubsequence(str, i + 1, j - 1, memo)
            return memo[pos]
        else
            memo[pos] = [maxPalinSubsequence(str, i + 1, j, memo),
            maxPalinSubsequence(str, i, j - 1, memo)].max
            return memo[pos]
        end
end

p maxPalinSubsequence("enamelpinportlandtildecoldpressedironyflannelsemioticsedisonbulbfashionaxe");# // -> 31