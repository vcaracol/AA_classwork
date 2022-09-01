class Piece

    attr_accessor :pos
    attr_reader :color

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def inspect
        "#{self.class}, #{color}"
    end

    def moves
    
    end

    def to_s

    end

    def empty?

    end

    def valid_moves

    end

    # def pos=(val)

    # end

    # def Symbol

    # end

    private
    def move_into_check?(end_pos)

    end
end