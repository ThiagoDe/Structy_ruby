require 'set'
def intersection(a, b) # O(n + m)
    result = []
    set = Set.new(a) # time O(n) initialize n = elements of the input
        b.each do |e| # O(m) length of b
    result.push(e) if set.include?(e) # O(1)
    end
   return result
end

p intersection([4,2,1], [1,2,4,6]) # [1,2,4]
p intersection([0,1,2], [10,11]) # []
