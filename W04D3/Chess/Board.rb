require_relative "Piece"
require "byebug"
require_relative "Knight"
require_relative "NullPiece"

class Board
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @null_piece = NullPiece.instance
    end

    def pop_board
        # debugger
        
        add_piece(Knight.new(:black, self, [0,1]), [0,1])
        add_piece(Knight.new(:black, self, [0,6]), [0,6])
        
        [1].each do |row|
            (0..7).each do |col|
                pos = [row, col]
                default_piece = Piece.new(:black, self, pos)
                add_piece(default_piece,pos)
            end
        end

        (1..7).each do |row|
            (0..7).each do |col|
                pos = [row, col]
                default_piece = @null_piece
                add_piece(default_piece,pos)
            end
        end

        [6,7].each do |row|
            (0..7).each do |col|
                pos = [row, col]
                default_piece = Piece.new(:white, self, pos)
                add_piece(default_piece,pos)
            end
        end
    end
    attr_accessor :grid
    
    def [](pos)
        row, col = pos
        @grid[row][col]
    end
    
    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
        # @grid[pos[0]][pos[1]] = val
    end
    
    def add_piece(piece, pos)
        self[pos] = piece
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos] == nil || !valid_pos?(end_pos)
            raise "invalid"
        end

        self[end_pos] = self[start_pos]
        self[start_pos] = nil

        self[end_pos].pos = end_pos
        
            # start_pos =
        
    end

    def valid_pos?(pos)
        pos[0] >= 0 && pos[0] < 8 && pos[1] >= 0 && pos[1] < 8
    end

    # # @board[0..1].map do |row|
    # #     row.map do |space|
    # #         Piece.new("white", board, space)
    # #     end
    # # end

    # # @board[6..7].map do |row|
    # #     row.map do |space|
    # #         Piece.new("black", board, space)
    # #     end
    # # end


    # def check_mate?

    # end

    # def in_check?(color)

    # end

    # def find_king(color)

    # end

    # def pieces

    # end

    # def dup

    # end

    # def move_piece!(color, start_pos, end_pos)

    # end
end