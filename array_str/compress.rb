def compress(s) # time complexty O(n) input size
    i = 0
    j = 0
    compressed = []
    while (j <= s.length)     
        if (s[i] === s[j])
            j += 1
        else
            if (j - i) === 1
                compressed << s[i]
            else
                t = j - i
                compressed.push(t, s[i])
            end
                i = j 
        end
    end
    return compressed.join('') # space complexty O(n) we have to create the output
end

p compress('nnneeeeeeeeeeeezz'); # -> '3n12e2z'
p compress('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'); 
