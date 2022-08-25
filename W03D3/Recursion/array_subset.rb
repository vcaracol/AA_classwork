def subsets(arr)
    return [[]] if arr == []
    # return [[], [1]] if arr == [1]
    front = subsets(arr[0...-1]) # [[], [1]]
    second = front.map do |ele| # [[2], [1,2]]
        ele + [arr[-1]]
    end

    front + second # [[], [1]] + [[2], [1,2]]
end

# p subsets([]) # => [[]]
# p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
# p subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

