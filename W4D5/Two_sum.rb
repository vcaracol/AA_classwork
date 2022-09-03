
#O(n^2)
def two_sum?(arr, target_sum)
    (0...arr.length).each do |i1|
        (0...arr.length).each do |i2|
            if i2 > i1 && ((arr[i1] + arr[i2]) == target_sum)
                return true
            end
        end
    end
    false
end

def okay_two_sum?(arr, target_sum)
    arr1 = arr.sort
    mid = arr1.length / 2
    left = arr1.[0...mid]
    right = arr1[mid+1..-1]
    
    if arr[mid] + left.okay_two_sum?()

end

