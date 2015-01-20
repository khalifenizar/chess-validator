require_relative 'pieces/bishop'
require_relative 'pieces/knight'
require_relative 'pieces/queen'
require_relative 'pieces/king'
require_relative 'pieces/pawn'
require_relative 'pieces/rook'

class ChessBoard
    def initialize
        @positions = {}

        @positions[:a8] = Rook.new(:a8, :black)
        @positions[:b8] = Knight.new(:b8, :black)
        @positions[:c8] = Bishop.new(:c8, :black)
        @positions[:d8] = Queen.new(:d8, :black)
        @positions[:e8] = King.new(:e8, :black)
        @positions[:f8] = Bishop.new(:f8, :black)
        @positions[:g8] = Knight.new(:g8, :black)
        @positions[:h8] = Rook.new(:h8, :black)
        @positions[:a7] = Pawn.new(:a7, :black)
        @positions[:b7] = Pawn.new(:b7, :black)
        @positions[:c7] = Pawn.new(:c7, :black)
        @positions[:d7] = Pawn.new(:d7, :black)
        @positions[:e7] = Pawn.new(:e7, :black)
        @positions[:f7] = Pawn.new(:f7, :black)
        @positions[:g7] = Pawn.new(:g7, :black)
        @positions[:h7] = Pawn.new(:h7, :black)

        @positions[:a2] = Pawn.new(:a2, :white)
        @positions[:b2] = Pawn.new(:b2, :white)
        @positions[:c2] = Pawn.new(:c2, :white)
        @positions[:d2] = Pawn.new(:d2, :white)
        @positions[:e2] = Pawn.new(:e2, :white)
        @positions[:f2] = Pawn.new(:f2, :white)
        @positions[:g2] = Pawn.new(:g2, :white)
        @positions[:h2] = Pawn.new(:h2, :white)
        @positions[:a1] = Rook.new(:a1, :white)
        @positions[:b1] = Knight.new(:b1, :white)
        @positions[:c1] = Bishop.new(:c1, :white)
        @positions[:d1] = Queen.new(:d1, :white)
        @positions[:e1] = King.new(:e1, :white)
        @positions[:f1] = Bishop.new(:f1, :white)
        @positions[:g1] = Knight.new(:g1, :white)
        @positions[:h1] = Rook.new(:h1, :white)
    end

    def move?(start, target)
        piece = @positions[start]
        return piece.move_to(target)
    end
end
