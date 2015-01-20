require_relative "piece"

class King < Piece
    def move_to(destination)
        distance_x, distance_y = self.distance(destination)

        return (distance_x != 0 || distance_y != 0) &&
            distance_x.abs.between?(0, 1) &&
            distance_y.abs.between?(0, 1)
    end
end
