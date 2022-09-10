require_relative "Piece"

class Board
    def initialize
        @board = Array.new(8) {Array.new(8)}
        # @null_piece = NullPiece
    end

    attr_accessor :board

    def [](pos)
        @board [pos[0]] [pos[1]]
    end

    def []=(pos, val)
        @board [pos[0]] [pos[1]] = val
    end

    def move_piece(start_pos, end_pos)
        start_pos =
        
    end

    def valid_pos?(pos)

    end

    # @board[0..1].map do |row|
    #     row.map do |space|
    #         Piece.new("white", board, space)
    #     end
    # end

    # @board[6..7].map do |row|
    #     row.map do |space|
    #         Piece.new("black", board, space)
    #     end
    # end

    def add_piece(piece, pos)
        @board[pos]= piece
    end

    def check_mate?

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end