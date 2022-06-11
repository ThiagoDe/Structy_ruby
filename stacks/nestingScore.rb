def nestingScore(str)
    stack = []
    count_close = 0 
    str.each_char do |char|
        if char == '['
            stack.push(char)
        elsif char == ']' 
        end
    end
end

p nestingScore("[][][]")# // -> 3
p nestingScore("[[]]")# // -> 2
p nestingScore("[[][]]")# // -> 4
p nestingScore("[[][][]]")# // -> 6
p nestingScore("[[][]][]")# // -> 5
p nestingScore("[][[][]][[]]")# // -> 7
p nestingScore("[[[[[[[][]]]]]]][]")# // -> 129