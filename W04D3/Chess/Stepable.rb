module Stepable
    def moves
        valid_moves = []
        move_dirs.each do |direction|
            x = self.pos.first
            y = self.pos.last
            dx = direction.first
            dy = direction.last

            new_pos = [x + dx, y + dy]
            valid_moves << new_pos if @board.valid_pos?(new_pos) && ( @board[new_pos].color != self.color || @board[new_pos] == nil )
        end
        valid_moves
    end
end