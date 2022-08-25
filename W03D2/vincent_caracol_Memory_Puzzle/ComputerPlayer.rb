require_relative "Game.rb"

class ComputerPlayer
    def initialize(name = "Ralf")
        @name = name
        @known_cards = Hash.new {|h,k| h[k] = []}
        @matched_cards = []
    end

    def receive_revealed_card(pos, val)
        @known_cards[val] << pos
    end

    def receive_match(pos1, pos2)
        @matched_cards = []
        @matched_cards << pos1
        @matched_cards << pos2
    end

    def prompt
        @known_cards.values.each do |ele|
            if ele.length == 2
                return ele[0]
            end
        end
        
        i = 1
        while i > 0
            arr = [rand(Game.size), rand(Game.size)]
            if !@known_cards.values.include?(arr)
                return arr
            end
        end
    end
    

end