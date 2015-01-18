require_relative "move/diagonal_move"
require_relative "move/straight_move"
require_relative "piece"

class Queen < Piece
    include DiagonalMove
    include StraightMove

    def move_to(destination)
        return self.diagonal_move?(@position.algebraic, destination) ||
            self.straight_move?(@position.algebraic, destination)
    end
end
