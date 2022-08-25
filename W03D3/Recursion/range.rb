# def range(start, ends)
#     return [] if ends < start
#     return [] if ends == start
#     range(start, ends-1) << ends - 1
# end



def range(start,ends)
    new_arr = []
    (start...ends).each do |num|
        new_arr << num
    end
    new_arr
end

p range(1,5)