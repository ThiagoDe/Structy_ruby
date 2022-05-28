def pairSum(arr, target)
    num = {} # {num[4] : 0, 7 : 1} linear space O(n)
    i = 0

    while i < arr.length # time complexty O(n) n numb of iterated elements 
        current = arr[i] # 4 
        differ = target - current # 1
         if num[differ]
            return [num[differ], i]
         end
        num[current] = i 
        i += 1
    end
end

p pairSum([4, 7, 9, 2, 5, 1], 5)
p pairSum([4, 7, 9, 2, 5, 1], 3); #[3, 5]
p pairSum([9, 9], 18); # [0, 1]
