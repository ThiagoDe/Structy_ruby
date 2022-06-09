def arrayStepper(nums, i = 0, memo = {})
    return memo[i] if memo.has_key?(i)
    return true if i >= nums.length - 1

    maxStep = nums[i];
    (1..maxStep).each do |step|
        if arrayStepper(nums, i + step, memo) 
            memo[i] = true
            return true 
        end
    end
    memo[i] = false
    return memo[i] 
end

# p arrayStepper([2, 4, 2, 0, 0, 1]);# // -> true
p arrayStepper([ 
  31, 30, 29, 28, 27,
  26, 25, 24, 23, 22,
  21, 20, 19, 18, 17,
  16, 15, 14, 13, 12,
  11, 10, 9, 8, 7, 6,
  5, 3, 2, 1, 0, 0, 0
]);# // -> false