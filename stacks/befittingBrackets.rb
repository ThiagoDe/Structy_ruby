def befittingBrackets(str)
    stack = [] # [ '}',']', ')', ]
    brackets = {
        '[' => ']',
        '{' => '}',
        '(' => ')'
    }
    (0...str.length).each do |i|
        if brackets.has_key?(str[i])
            stack.push(brackets[str[i]])
        elsif str[i] == stack.last 
            stack.pop
        else
            return false
        end
    end

    return stack.empty?
end

# p befittingBrackets('[]{}()[]');# // -> true
# p befittingBrackets(']{}'); #// -> false
# p befittingBrackets('');# // -> true
# p befittingBrackets('{[(}])');# // -> false
p befittingBrackets('(){}[](())')#; // -> true
p befittingBrackets('({[]})')#; // -> true
p befittingBrackets('[][}')#; // -> false
p befittingBrackets('{[]}({}')#; // -> false
p befittingBrackets('[]{}(}[]')#; // -> false