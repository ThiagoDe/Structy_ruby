def decompressBraces(s)
    nums = '1234567890'
    stack = [] # 'z', 3, a, 2, x, y

    s.each_char do |char|
        if nums.include?(char)
            stack.push(char.to_i)
        else 
            if char == '}'
                segment = ''
                while !stack[-1].is_a? Numeric   
                    popped = stack.pop
                    segment
                    segment = popped + segment
                end
                num = stack.pop
                stack.push(repeat(segment, num))
            elsif char != '{'
                stack.push(char)
            end
        end
    end
    return stack.join  
end

def repeat(str, n)
    result = ''
    n.times { result += str}
    return result 
end
p decompressBraces("2{q}3{tu}v"); 
# -> qqtututuv 
p decompressBraces("ch3{ao}"); 
# -> chaoaoao
p decompressBraces("2{y3{o}}s"); 
# -> yoooyooos
p decompressBraces("z3{a2{xy}b}"); 
# -> zaxyxybaxyxybaxyxyb 