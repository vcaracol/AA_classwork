module Slideable
    HORIZONTAL_DIRS: [
    [1, 0],
    [0, -1],
    [-1, 0],
    [0, 1],
    ]

    DIAGONAL_DIRS: [
    [-1, 1],
    [1, 1],
    [1, -1],
    [-1, -1],
    ]
    
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        start_pos = [x, y]
        valid_moves = []
        move_dirs.each do |direction|
            x = self.pos.first
            y = self.pos.last
            dx = direction.first
            dy = direction.last
            
            # (1..7).each do |i|

            new_pos = [x + dx, y + dy]
            valid_moves << new_pos if @board.valid_pos?(new_pos) && ( @board[new_pos].color != self.color || @board[new_pos] == nil )
        end
        valid_moves
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        


end