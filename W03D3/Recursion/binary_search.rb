def bsearch(arr, target)
    return nil if arr.length == 0
    mid = arr.length / 2
    return mid if arr[mid] == target

    left = arr[0...mid]
    right = arr[(mid + 1)..-1]

    if arr[mid] > target
        bsearch(left, target)
    else
        stacks = bsearch(right,target)
        mid + 1 + stacks if stacks
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) #p  => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil