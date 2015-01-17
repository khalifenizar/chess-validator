class Piece
    def initialize(algebraic, set)
        self.algebraic = algebraic
        @set = set.to_sym
    end

    def algebraic=(algebraic)
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
end
