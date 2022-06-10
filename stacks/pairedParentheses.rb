def pairedParentheses(str)
    stack = []
    parent = {
        '(' => ')'
    }

    (0...str.length).each do |i|
        return false if str[i] == ')' && stack.empty?
        if parent.has_key?(str[i])
            stack.push(parent[str[i]])
        elsif str[i] == stack.last
            stack.pop
        end
    end
    return stack.empty?
end

p pairedParentheses("(david)((abby))");# // -> true
p pairedParentheses("()rose(jeff"); #// -> false
p pairedParentheses(")(");# // -> false
p pairedParentheses("(())(water)()");# // -> true
p pairedParentheses("(())(water()()");# // -> false
p pairedParentheses(""); #// -> true
p pairedParentheses("))()"); #// -> false

