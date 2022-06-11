def nestingScore(str)
    stack = [0]
    
    str.each_char do |char|
        if char == '['
            stack.push(0) 
        else
            popped = stack.pop 
            if popped == 0
                stack[- 1] += 1
            else
                stack[- 1] += (popped * 2)
            end
        end
    end
    return stack[0]
end

p nestingScore("[][][]")# // -> 3
p nestingScore("[[]]")# // -> 2
p nestingScore("[[][]]")# // -> 4
p nestingScore("[[][][]]")# // -> 6
p nestingScore("[[][]][]")# // -> 5
p nestingScore("[][[][]][[]]")# // -> 7
p nestingScore("[[[[[[[][]]]]]]][]")# // -> 129