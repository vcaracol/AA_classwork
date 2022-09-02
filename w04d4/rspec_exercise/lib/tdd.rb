require 'byebug'
class Array

# Remove dups
# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an Array and return a new array.


    def remove_dups
        self.tally.keys
    end

    # Two sum
    # Write a new Array#two_sum method that finds all pairs of positions where the elements at those positions sum to zero.
    
    # NB: ordering matters. We want each of the pairs to be sorted smaller index before bigger index. We want the array of pairs to be sorted "dictionary-wise":
    
    # [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
    # [0, 2] before [2, 1] (smaller first elements come first)
    # [0, 1] before [0, 2] (then smaller second elements come first)

    def two_sum
        arr = []
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                if i < j
                    arr << [i, j] if self[i] + self[j] == 0
                end
            end
        end
        arr
    end

    def my_transpose
        arr = Array.new(self.length) {[]}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                arr[i] << self[j][i]
            end
        end
        arr
    end

    def stock_picker
        largest_arr = []
        largest_return = 0

        (0...self.length).each do |i|
            (0...self.length).each do |j|
                if i > j
                    if self[i] - self[j] > largest_return
                        largest_arr = [j,i]
                        largest_return = self[i] - self[j]
                    end
                end
            end
        end
        largest_arr
    end

    
end

class TowersOfHanoi
    attr_accessor :tower

    def initialize
        @tower = [[5,4,3,2,1], [], []]
    end

    def move(arr)
        raise 'must be length of 2' if arr.size != 2
        raise 'must be an integer' unless arr[0].is_a?(Integer) || arr[1].is_a?(Integer)

        temp = tower[arr[0]].pop
        tower[arr[1]].push(temp)
    end

    def won?
        self.tower[0] == [] #&& self.tower[1] == [] && self.tower[2] == [5,4,3,2,1]
    end
end

# p game_tower = TowersOfHanoi.new
# p arr = [0,2]
# p game_tower.move(arr)
