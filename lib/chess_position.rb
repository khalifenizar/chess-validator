class ChessPosition
    attr_reader(:algebraic)

    def initialize(algebraic)
        @algebraic = algebraic.to_sym
        @x, @y = self.decode_algebraic(@algebraic)
    end

    def decode_algebraic(position)
        x = self.decode_letter(position[0])
        y = position[1].to_i
        return x, y
    end

    def decode_letter(letter)
        return letter.bytes[0] - 96
    end

    def distance(target)
        target_x, target_y = self.decode_algebraic(target)
        x = target_x - @x
        y = target_y - @y
        return x, y
    end
end
