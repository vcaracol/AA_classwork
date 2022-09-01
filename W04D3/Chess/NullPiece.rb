require_relative "Piece"
require "singleton"

class NullPiece < Piece
include Singleton

   def initialize
    @color = :none
    @symbol = "empty"
   end

end