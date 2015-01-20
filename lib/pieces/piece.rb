require_relative "../chess_position"

class Piece
    def initialize(algebraic, set)
        @position = ChessPosition.new(algebraic)
        @set = set.to_sym
    end

    def distance(target)
        return @position.distance(target)
    end
end
