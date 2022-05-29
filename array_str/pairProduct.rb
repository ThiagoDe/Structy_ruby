def pairProduct(arr, target)
    elements = {}
    i = 0

    while i < arr.length # time O(n) elements
        current = arr[i]
        product = target / (current * 1.0)
        p product
        if elements[product.to_i]
            return [elements[product.to_i], i] 
        end
        elements[current] = i  # space O(n) store n elements 
        i += 1
    end
end

p pairProduct([3, 2, 5, 4, 1], 8); # [1, 3]
p pairProduct([4, 6, 8, 2], 16); # -> [2, 3]