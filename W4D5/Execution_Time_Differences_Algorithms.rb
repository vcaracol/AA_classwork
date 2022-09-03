#O(n^2)
def my_min(array)
    min = 0
    (0...array.length - 1).each do |i1|
        (0...array.length - 1).each do |i2|
            if array[i2] < array[i1]
                min = array[i2]
            end
        end
    end
    min
end
 



list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)
O(n)
def my_min(array)
    min = 0
    array.each {|ele| min = ele if ele < min}
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

O(n^2)
def largest_contiguous_subsum(array)
    new_arr = []
    sum1 = 0
    (0...array.length).each_with_index do |i1|
        (i1...array.length).each_with_index do |i2| 
               new_arr << array[i1..i2].sum
        end
    end
     new_arr.max
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])

#O(1)O(n)
def largest_contiguous_subsum(array)
    largest_sum = array[0]
    (0...array.length).each do |i|
        if array[i..-1].sum > array[0..i].sum
            current_sum = array[i..-1].sum
        else
            current_sum = array[0..i].sum
        end

        if array[i] > current_sum
            current_sum = array[i]
        end

        
        if current_sum > largest_sum
           largest_sum = current_sum
        end    
    end
    largest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
 p largest_contiguous_subsum(list) # => -1 (from [-1])