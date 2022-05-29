def fiveSort(arr)
    i = 0
    j = arr.length - 1

    while i < j # time complexty O(n)
        if arr[i] == 5 && arr[j] != 5
            arr[i], arr[j] = arr[j], arr[i] # space O(1)
            i += 1
            j -= 1
        elsif arr[j] == 5
            j -= 1
        else
            i += 1
        end
    end
    return arr
end

p fiveSort([5, 2, 5, 6, 5, 1, 10, 2, 5, 5]);
# [2, 2, 10, 6, 1, 5, 5, 5, 5, 5] 

p fiveSort([5, 1, 2, 5, 5, 3, 2, 5, 1, 5, 5, 5, 4, 5]);
# [4, 1, 2, 1, 2, 3, 5, 5, 5, 5, 5, 5, 5, 5] 