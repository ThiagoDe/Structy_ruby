def mostFrequentChar(s) # t O(2n) => O(n)
    count = Hash.new { |h, k| h[k] = 0}

    s.each_char do |char|
        count[char] += 1
    end

    best = s[0]
    s.each_char do |char|
        if count[char] > count[best] 
            best = char
        end
    end

    return best
end

p mostFrequentChar('mississippi'); # -> 'i'
p mostFrequentChar('potato')
p mostFrequentChar('eleventennine')