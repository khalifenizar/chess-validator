require_relative "piece"

class Knight < Piece
    def move_to(destination)
        distance_x, distance_y = self.distance(destination)

        return (distance_x.abs == 1 && distance_y.abs == 2) ||
            (distance_x.abs == 2 && distance_y.abs == 1)
    end
end
