require_relative "Piece"
require_relative "Slideable"

class Bishop < Piece
    include Slideable
    def initialize(color, board, pos, name)
        super(color, board, pos)
        @name = :B
    end

    def move_dirs
        diagonal_dirs
    end
end