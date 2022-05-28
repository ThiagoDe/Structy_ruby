def compress(s)
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
    return compressed.join('')
end

p compress('nnneeeeeeeeeeeezz'); # -> '3n12e2z'
p compress('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'); 
