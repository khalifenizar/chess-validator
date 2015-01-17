require_relative "piece"

class Pawn < Piece
    def initialize(algebraic, set)
        super(algebraic, set)

        case set
        when :white
            @direction = 1
            @starting_y = 2
        when :black
            @direction = -1
            @starting_y = 7
        end

        @is_first = @y == @starting_y
    end

    def move_to(destination)
        distance_x, distance_y = self.distance(destination)
        direction = distance_y <=> 0

        return direction == @direction &&        # needs to move in the correct direction
            distance_x == 0 &&                   # needs to not move to the side
            (distance_y.abs == 1 ||              # needs to move one space unless...
            (distance_y.abs == 2 && @is_first))  # it's the first move and it can move two
    end
end
