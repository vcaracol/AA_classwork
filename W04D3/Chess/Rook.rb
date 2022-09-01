require_relative "Piece"

class Rook < Piece
    def initialize(color, board, pos, name)
        super(color, board, pos)
        @name = :R
    end

    def move_dirs
        horizontal_dirs
    end
end