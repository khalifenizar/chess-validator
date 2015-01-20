require_relative "moves/straight_move"
require_relative "piece"

class Rook < Piece
    include StraightMove

    def move_to(destination)
        return self.straight_move?(@position.algebraic, destination)
    end
end
