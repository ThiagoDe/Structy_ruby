def overlapSubsequence(str1, str2, i = 0, j = 0, memo = {})
    key = i.to_s + "," + j.to_s
    return memo[key] if memo.has_key?(key)
    return 0 if i == str1.length || j == str2.length 

    if str1[i] == str2[j]
       memo[key] = 1 + overlapSubsequence(str1, str2, i + 1, j + 1)
    else
        memo[key] = [overlapSubsequence(str1, str2, i + 1, j),
        overlapSubsequence(str1, str2, i, j + 1)].max 
    end
    return memo[key]
end
p overlapSubsequence("dogs", "daogt");# // -> 3