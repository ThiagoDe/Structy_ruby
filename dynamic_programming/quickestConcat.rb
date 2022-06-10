def quickestConcat(s, words, memo = {})
    return memo[s] if memo.has_key?(s)
    return 0 if s == ''
    min = Float::INFINITY

    words.each do |word|
        if s.start_with?(word)
            possible = 1 + quickestConcat(s[word.length..-1], words, memo)
            min = [min, possible].min 
        end
    end
    return - 1 if min == Float::INFINITY
    memo[s] = min 
    return memo[s]
    
end

p quickestConcat('caution', ['ca', 'ion', 'caut', 'ut'])#; // -> 2
p quickestConcat('rongbetty', ['wrong', 'bet']);# // -> -1
p quickestConcat('respondorreact', ['re', 'or', 'spond', 'act', 'respond'])#; // -> 4
p quickestConcat('uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', ['u', 'uu', 'uuu', 'uuuu', 'uuuuu']);# // -> 7
