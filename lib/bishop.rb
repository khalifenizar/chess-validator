require_relative "move/diagonal_move"
require_relative "piece"

class Bishop < Piece
    include DiagonalMove

    def move_to(destination)
        return self.diagonal_move?(@position.algebraic, destination)
    end
end
