class MoveList
    include Enumerable

    def initialize(moves = [])
        @moves = moves
    end

    def each(&block)
        @moves.each do |move|
            block.call(move[:start], move[:target])
        end
    end
end
