require_relative "../chess_position"

module StraightMove
    def straight_move?(start, target)
        start_position = ChessPosition.new(start)
        distance_x, distance_y = start_position.distance(target)

        return (distance_x == 0 && distance_y != 0) ||
            (distance_x != 0 && distance_y == 0)
    end
end
