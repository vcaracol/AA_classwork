require_relative "PolyTreeNode.rb"

class KnightPathFinder
    MOVES = [
        [1, 2],
        [-1, 2],
        [-1, -2],
        [2, 1],
        [-2, 1],
        [-2, -1],
        [1, -2],
        [2, -1]
    ]
    attr_reader :start_pos, :root_node
    
    def self.valid_moves(pos)
        all_new_moves = [] 
        MOVES.each do |dir|
            new_x = pos[0] + dir[0]
            new_y = pos[1] + dir[1]
           new_pos = [new_x, new_y]
           all_new_moves << new_pos
        end
        all_new_moves.select! {|position| position.first >= 0 && position.first <= 7}
        all_new_moves.select! {|position| position.last >= 0 && position.last <= 7}
        all_new_moves
    end

    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = [pos]
        # build_move_tree
    end

    def new_move_positions(pos)
        valid_moves = KnightPathFinder.valid_moves(pos)
        
        new_moves = valid_moves.select {|position| !@considered_positions.include?(position)}
        new_moves.each {|move| @considered_positions << move}
        new_moves
    end

    def build_move_tree
        
        Queue = @root_node
        until
    end
end