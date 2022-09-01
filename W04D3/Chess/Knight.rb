require_relative "Piece"
require_relative "Stepable"

class Knight < Piece
    include Stepable

    def initialize(color, board, pos)
        super(color, board, pos)
        @name = :Kn
    end

    def move_dirs
        [
        [-2,1],
        [-1,2],
        [1,2],
        [2,1],
        [2,-1],
        [1,-2],
        [-1,-2],
        [-2,-1]
    ]    
    end

end