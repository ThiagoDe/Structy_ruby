require 'byebug'

def anagrams(s1, s2) # t O(n+m)
    hash1 = Hash.new { |h, k| h[k] = 0}
    hash2 = Hash.new { |h, k| h[k] = 0}

    s1.each_char do |c|
        hash1[c] += 1;
        debugger
    end
    s2.each_char do |c|
        hash2[c] += 1;
    end

    hash1 == hash2
end

p anagrams('monkeyswrite', 'newyorktimes'); # -> true
p anagrams('abbc', 'aabc'); 