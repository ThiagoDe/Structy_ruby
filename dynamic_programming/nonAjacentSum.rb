def nonAdjacentSum(nums, i = 0, memo = {})
    return memo[i] if memo.has_key?(i)
    return 0 if i >= nums.length 

    includes = nums[i] + nonAdjacentSum(nums, i + 2, memo)
    excludes = nonAdjacentSum(nums, i + 1, memo)
    memo[i] = [includes, excludes].max 
    return memo[i]
end

nums = [2, 4, 5, 12, 7];
p nonAdjacentSum(nums);# // -> 16