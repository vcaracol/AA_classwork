require_relative "Card.rb"

class Board 
    
    attr_reader :size, :grid

    def initialize(size)
        @grid = Array.new(size) {Array.new(size)}
        @size = size
    end 

    def populate
        deck = Card.shuffled_deck(size)
        @grid.each_with_index do |row, i|
            row.each_with_index do |column, j|
                @grid[i][j] = deck.shift
            end 
        end
    end 

    def render
        @grid.each do |row|
            arr = []
            row.each do |ele|
                if ele.face_down 
                    arr << "_"
                else
                    arr << ele
                end
            end
            puts arr.join(" ")
        end
        nil
    end 

    def won?
        @grid.flatten.all? {|card| card.face_down == false } 
    end 

    def reveal(pos)
        (@grid[pos[0]][pos[1]]).reveal
    end

    def [](pos)
        @grid[pos[0]][pos[1]]
    end

    # def []=(pos)
    #     @grid[pos[0]][pos[1]] = @grid[pos]
    # end


end 