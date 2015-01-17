require_relative "piece"

class Pawn < Piece
    def initialize(algebraic, set)
        super(algebraic, set)

        @direction =
            case set
            when :white then 1
            when :black then -1
            end

        @has_moved = false
    end

    def move_to(destination)
        distance_x, distance_y = self.distance(destination)
        direction = distance_y <=> 0

        return distance_x == 0 &&    # needs to not move to the side
            distance_y.abs <= 2 &&   # needs to not move more than 2 spaces
            distance_y.abs > 0 &&    # needs to actually move
            direction == @direction  # needs to move in the correct direction
    end
end
