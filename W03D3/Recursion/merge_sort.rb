require 'byebug'
def merge_sort(arr)
    # debugger
    return [] if arr.length == 0
    return arr if arr.length == 1
    mid = arr.length / 2
    left = arr[0...mid]
    right = arr[mid..-1]
    new_left = merge_sort(left)
    new_right = merge_sort(right)
    merge(new_left,new_right)


end

def merge(left, right)
    merged = []

    until left.empty?|| right.empty?
        if left[0] > right[0]  
            merged << right.shift()
        else 
            merged << left.shift()
        end
    end
    merged + left + right
end
p merge_sort([5,4,6,7,1,3,2,8])

# p merge([1,3,5], [2,4,7])