def uncompress(s) # O(nm) n = n char, m => times that you have to push
    i = 0
    j = 0
    nums = "1234567890"
    arr = []

    while j < s.length 
        if nums.include?(s[j])
            j += 1
        else
            
            t = s[i...j]
            p t 
            t.to_i.times { arr.push(s[j])} # m times
            j += 1
            i = j
        end
    end
    return arr.join('')
end

p uncompress("3n12e2z")