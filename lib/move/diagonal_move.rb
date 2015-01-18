require_relative "../chess_position"

module DiagonalMove
    def diagonal_move?(start, target)
        start_position = ChessPosition.new(start)
        distance_x, distance_y = start_position.distance(target)

        return distance_x.abs == distance_y.abs &&
            distance_x != 0 &&
            distance_y != 0
    end
end
