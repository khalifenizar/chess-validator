require_relative 'move_list'

class FileMoveList < MoveList
    def initialize(file_name)
        contents = IO.read(file_name)
        move_strings = contents.split("\n")
        moves = move_strings.map do |str|
            positions = str.split(' ')
            move_hash = {
                :start => positions[0].to_sym,
                :target => positions[1].to_sym
            }
            move_hash
        end

        super(moves)
    end
end
