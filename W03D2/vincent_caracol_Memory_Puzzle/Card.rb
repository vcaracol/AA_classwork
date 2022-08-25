class Card 

    attr_reader :card, :face_down, :value

    def initialize(value)
        @face_down = true
        @value = value
    end 

    def hide
        @face_down = true 
    end 

    def reveal
        @face_down  = false
        @value
    end 

    def to_s
        self.value.to_s
    end

    def ==(another_card)
        self.to_s == another_card.to_s
    end   

    def self.shuffled_deck(num)
        arr = ("a".."z").to_a
        arr += arr
        arr = arr.sort 
        deck = []
        (num ** 2 /2).times do 
            card1 = Card.new(arr.shift)
            card2 = Card.new(arr.shift)
            deck << card1 
            deck << card2 
        end
        deck.shuffle 
    end 
end
