def quickestConcat(s, words)
    return 0 if s == ''
    min = Float::INFINITY

    words.each do |word|
        if s.start_with?(word)
            possible = 1 + quickestConcat(s[word.length..-1], words)
            min = [min, possible].min 
        end
    end
    return - 1 if min == 0 
    return min 
end

p quickestConcat('caution', ['ca', 'ion', 'caut', 'ut'])#; // -> 2
p quickestConcat('rongbetty', ['wrong', 'bet']);# // -> -1
p quickestConcat('respondorreact', ['re', 'or', 'spond', 'act', 'respond'])#; // -> 4

